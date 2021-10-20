library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
library computer_constants;
use computer_constants.controls.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

    type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

    
    constant ADDR_ZERO  : std_logic_vector(8 downto 0) := '0' & x"00"; -- endereco da constante 0
    constant ADDR_ONE   : std_logic_vector(8 downto 0) := '0' & x"01"; -- endereco da constante 1
    constant ADDR_TEN   : std_logic_vector(8 downto 0) := '0' & x"02"; -- endereco da constante 9

    constant ADDR_CARRY : std_logic_vector(8 downto 0) := '0' & x"03"; -- endereco do bit de resto
    constant ADDR_OFLOW : std_logic_vector(8 downto 0) := '0' & x"04"; -- endereco do bit de overflow
    constant ADDR_FLAG  : std_logic_vector(8 downto 0) := '0' & x"05"; -- endereco do bit de flag
    
    constant ADDR_U         : std_logic_vector(8 downto 0) := '0' & x"06"; -- endereco das unidades
    constant ADDR_D         : std_logic_vector(8 downto 0) := '0' & x"07"; -- endereco das dezenas
    constant ADDR_C         : std_logic_vector(8 downto 0) := '0' & x"08"; -- endereco das centenas
    constant ADDR_M         : std_logic_vector(8 downto 0) := '0' & x"09"; -- endereco das unidades de milhares
    constant ADDR_DM        : std_logic_vector(8 downto 0) := '0' & x"0a"; -- endereco das dezenas de milhares
    constant ADDR_CM        : std_logic_vector(8 downto 0) := '0' & x"0b"; -- endereco das centenas de milhares

    constant ADDR_LMT_U : std_logic_vector(8 downto 0) := '0' & x"0c"; -- endereco do limite das unidades
    constant ADDR_LMT_D : std_logic_vector(8 downto 0) := '0' & x"0d"; -- endereco do limite das dezenas
    constant ADDR_LMT_C : std_logic_vector(8 downto 0) := '0' & x"0e"; -- endereco do limite das centenas
    constant ADDR_LMT_M : std_logic_vector(8 downto 0) := '0' & x"0f"; -- endereco do limite das unidades de milhares
    constant ADDR_LMT_DM    : std_logic_vector(8 downto 0) := '0' & x"10"; -- endereco do limite das dezenas de milhares
    constant ADDR_LMT_CM    : std_logic_vector(8 downto 0) := '0' & x"11"; -- endereco do limite das centenas de milhares
    
    constant R0 : std_logic_vector(1 downto 0) := "00"; -- registrador 1
    constant R1 : std_logic_vector(1 downto 0) := "01"; -- registrador 2
    constant R2 : std_logic_vector(1 downto 0) := "10"; -- registrador 3
    constant R3 : std_logic_vector(1 downto 0) := "11"; -- registrador 4
    
    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin

        
        tmp(0) := JMP  & R0  & '1' & x"20"; -- desvia para 0x120 (rotina principal)
        
        -- 0x001 | inicializa memoria
        tmp(1)  := LDI  & R0 & '0' & x"00";
        tmp(2)  := STA  & R0 & ADDR_U;     -- unidades = 0
        tmp(3)  := STA  & R0 & ADDR_D;     -- dezenas  = 0
        tmp(4)  := STA  & R0 & ADDR_C;     -- centenas = 0
        tmp(5)  := STA  & R0 & ADDR_M;     -- unidades de milhares = 0
        tmp(6)  := STA  & R0 & ADDR_DM;    -- dezenas de milhares = 0
        tmp(7)  := STA  & R0 & ADDR_CM;    -- centenas de milhares = 0

        tmp(8)  := STA  & R0 & ADDR_ZERO;   -- MEM[0] = 0

        tmp(9)  := LDI  & R0 & '0' & x"01"; -- A = 1
        tmp(10)  := STA  & R0 & ADDR_ONE;    -- MEM[1] = 1

        tmp(11) := LDI  & R0 & '0' & x"0a"; -- A = 10
        tmp(12) := STA  & R0 & ADDR_TEN;    -- MEM[2] = 10

        tmp(13) := RET  & R0 & '0' & x"00"; -- retorna retorna da sub-rotina


        -- 0x00f | atualiza leds
        tmp(15) := LDI  & R0 & '0' & x"00"; -- carrega imediato 0
        tmp(16) := STA  & R0 & ADDR_LEDR;   -- LEDS 0 ~ 7 = 0

        tmp(17) := LDA  & R0 & ADDR_FLAG;   -- carrega flag
        tmp(18) := STA  & R0 & ADDR_LED8;   -- LED 8 = 0

        tmp(19) := LDA  & R0 & ADDR_OFLOW;  -- carrega indicador de overflow
        tmp(20) := STA  & R0 & ADDR_LED9;   -- LED 9 = indicador de overflow

        tmp(21) := RET  & R0 & '0' & x"00"; -- retorna retorna da sub-rotina



        -- 0x020 | rotina de aumentar contagem | 32 ~ 95 (64 instrucoes)
        tmp(32) := STA  & R0 & '1' & x"ff";  -- limpa o botao em 0x1ff
        tmp(33) := LDA  & R0 & ADDR_FLAG;    -- carrega flag de inibicao
        tmp(34) := CEQ  & R0 & ADDR_ONE;     -- compara com 1
        tmp(35) := JEQ  & R0 & '0' & x"56";  -- desvia para 0x056 se flag == 1

        tmp(36) := NOP  & R0 & ADDR_ZERO;    -- faz nada

        -- incrementa unidades
        tmp(37) := LDA  & R0 & ADDR_U;      -- carrega unidades
        tmp(38) := SOMA  & R0 & ADDR_ONE;   -- soma 1
        tmp(39) := CEQ  & R0 & ADDR_TEN;    -- compara com 10
        tmp(40) := JEQ  & R0 & '0' & x"2b"; -- se for igual, desvia para 0x02b
        -- se nao for igual
        tmp(41) := STA  & R0 & ADDR_U;
        tmp(42) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina
        -- se for igual
        tmp(43) := LDI  & R0 & ADDR_ZERO; -- 0x02b | carrega imediato 0
        tmp(44) := STA  & R0 & ADDR_U;    -- atualiza unidades

        -- incrementa dezenas
        tmp(45) := LDA  & R0 & ADDR_D;    -- carrega dezenas
        tmp(46) := SOMA  & R0 & ADDR_ONE; -- soma 1
        tmp(47) := CEQ  & R0 & ADDR_TEN;  -- compara com 10
        tmp(48) := JEQ  & R0 & '0' & x"33";  -- se for igual, desvia para 0x033
        -- se nao for igual
        tmp(49) := STA  & R0 & ADDR_D;    -- atualiza dezenas
        tmp(50) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(51) := LDI  & R0 & ADDR_ZERO; -- 0x033 | carrega imediato 0
        tmp(52) := STA  & R0 & ADDR_D;    -- atualiza dezenas

        -- incrementa centenas
        tmp(53) := LDA  & R0 & ADDR_C;    -- carrega centenas
        tmp(54) := SOMA  & R0 & ADDR_ONE; -- soma 1
        tmp(55) := CEQ  & R0 & ADDR_TEN;  -- compara com 10
        tmp(56) := JEQ  & R0 & '0' & x"3b";  -- se for igual, desvia para 0x03b
        -- se nao for igual
        tmp(57) := STA  & R0 & ADDR_C;    -- atualiza centenas
        tmp(58) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(59) := LDI  & R0 & ADDR_ZERO; -- 0x03b | carrega imediato 0
        tmp(60) := STA  & R0 & ADDR_C;    -- atualiza centenas

        -- incrementa unidades de milhares
        tmp(61) := LDA  & R0 & ADDR_M;    -- carrega unidades de milhares
        tmp(62) := SOMA  & R0 & ADDR_ONE; -- soma 1
        tmp(63) := CEQ  & R0 & ADDR_TEN;  -- compara com 10
        tmp(64) := JEQ  & R0 & '0' & x"43";  -- se for igual, desvia para 0x043
        -- se nao for igual
        tmp(65) := STA  & R0 & ADDR_M;    -- atualiza unidades de milhares
        tmp(66) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(67) := LDI  & R0 & ADDR_ZERO; -- 0x043 | carrega imediato 0
        tmp(68) := STA  & R0 & ADDR_M;    -- atualiza unidades de milhares
        
        -- incrementa dezenas de milhares
        tmp(69) := LDA  & R0 & ADDR_DM;   -- carrega dezenas de milhares
        tmp(70) := SOMA  & R0 & ADDR_ONE; -- soma 1
        tmp(71) := CEQ  & R0 & ADDR_TEN;  -- compara com 10
        tmp(72) := JEQ  & R0 & '0' & x"4b";  -- se for igual, desvia para 0x04b
        -- se nao for igual
        tmp(73) := STA  & R0 & ADDR_DM;   -- atualiza dezenas de milhares
        tmp(74) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(75) := LDI  & R0 & ADDR_ZERO; -- 0x04b | carrega imediato 0
        tmp(76) := STA  & R0 & ADDR_DM;   -- atualiza dezenas de milhares
        
        -- incrementa centenas de milhares
        tmp(77) := LDA  & R0 & ADDR_CM;   -- carrega centenas de milhares
        tmp(78) := SOMA  & R0 & ADDR_ONE; -- soma 1
        tmp(79) := CEQ  & R0 & ADDR_TEN;  -- compara com 10
        tmp(80) := JEQ  & R0 & '0' & x"53";  -- se for igual, desvia para 0x053
        -- se nao for igual
        tmp(81) := STA  & R0 & ADDR_CM;   -- atualiza centenas de milhares
        tmp(82) := RET  & R0 & ADDR_ZERO; -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(83) := LDI  & R0 & ADDR_ONE;   -- 0x053 | carrega imediato 1
        tmp(84) := STA  & R0 & ADDR_OFLOW; -- flag de overflow = 1
        tmp(85) := STA  & R0 & ADDR_FLAG;  -- flag de inibicao = 1
        
        tmp(86) := RET  & R0 & ADDR_ZERO;  -- 0x056 | retorna da sub-rotina



        -- 0x060 | atualizar LCDs | 96 ~ 127 (32 instrucoes)
        tmp(96)  := LDA  & R0 & ADDR_U;     -- carrega o valor das unidades
        tmp(97)  := STA  & R0 & ADDR_HEX0;  -- escreve em HEX0
        tmp(98)  := LDA  & R0 & ADDR_D;     -- carrega o valor das dezenas
        tmp(99)  := STA  & R0 & ADDR_HEX1;  -- escreve em HEX1
        tmp(100) := LDA  & R0 & ADDR_C;     -- carrega o valor das centenas
        tmp(101) := STA  & R0 & ADDR_HEX2;  -- escreve em HEX2
        tmp(102) := LDA  & R0 & ADDR_M;     -- carrega o valor das unidades de milhares
        tmp(103) := STA  & R0 & ADDR_HEX3;  -- escreve em HEX3
        tmp(104) := LDA  & R0 & ADDR_DM;    -- carrega o valor das dezenas de milhares
        tmp(105) := STA  & R0 & ADDR_HEX4;  -- escreve em HEX4
        tmp(106) := LDA  & R0 & ADDR_CM;    -- carrega o valor das centenas de milhares
        tmp(107) := STA  & R0 & ADDR_HEX5;  -- escreve em HEX5

        tmp(108) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina



        -- 0x080 | reiniciar contagem | 128 ~ 143 (16 instrucoes)
        tmp(128) := LDI  & R0 & '0' & x"00"; -- carrega imediato zero
        tmp(129) := STA  & R0 & ADDR_U;      -- atualiza valor das unidades
        tmp(130) := STA  & R0 & ADDR_D;      -- atualiza valor das dezenas
        tmp(131) := STA  & R0 & ADDR_C;      -- atualiza valor das centenas
        tmp(132) := STA  & R0 & ADDR_M;      -- atualiza valor das unidades de milhares
        tmp(133) := STA  & R0 & ADDR_DM;     -- atualiza valor das dezenas de milhares
        tmp(134) := STA  & R0 & ADDR_CM;     -- atualiza valor das centenas de milhares
        tmp(135) := STA  & R0 & ADDR_FLAG;   -- atualiza valor da flag;
        tmp(136) := STA  & R0 & ADDR_OFLOW;  -- atualiza valor da flag;

        tmp(137) := JMP  & R0 & '0' & x"60"; -- 0x060 | deve saltar para atualizar os LCDs



        -- 0x090 alterar limites | 144 ~ 239 (96 instrucoes)
        tmp(144) := STA  & R0 & '1' & x"fe";        -- 0x090 (step 1) | limpa KEY[1]
        --  145
        tmp(146) := LDI  & R0 & '0' & b"0000_0001"; -- carrega imediato 1
        tmp(147) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0001"
        tmp(148) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(149) := STA  & R0 & ADDR_LMT_U;         -- armazena chaves no limite das unidades
        tmp(150) := STA  & R0 & ADDR_HEX0;          -- armazena chaves em HEX0 (mera visualizacao)
        --  151
        tmp(152) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(153) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(154) := JEQ  & R0 & '0' & x"9c"; -- desvia para 0x09c (step 2)
        -- se botao nao pressionado
        tmp(155) := JMP  & R0 & '0' & x"92"; -- volta para 0x092 (step 1)
        -- se botao pressionado, continua

        tmp(156) := STA  & R0 & '1' & x"fe";        -- 0x09c (step 2) | limpa KEY[1]
        --  157
        tmp(158) := LDI  & R0 & '0' & b"0000_0011"; -- carrega imediato 3
        tmp(159) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0011"
        tmp(160) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(161) := STA  & R0 & ADDR_LMT_D;         -- armazena chaves no limite das dezenas
        tmp(162) := STA  & R0 & ADDR_HEX1;          -- armazena chaves em HEX1 (mera visualizacao)
        --  163
        tmp(164) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(165) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(166) := JEQ  & R0 & '0' & x"a8"; -- desvia para 0x0a8 (step 3)
        -- se botao nao pressionado
        tmp(167) := JMP  & R0 & '0' & x"9c"; -- volta para 0x09c (step 2)
        -- se botao pressionado, continua

        tmp(168) := STA  & R0 & '1' & x"fe";        -- 0x0a8 (step 3) | limpa KEY[1]
        --  169
        tmp(170) := LDI  & R0 & '0' & b"0000_0111"; -- carrega imediato 7
        tmp(171) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0111"
        tmp(172) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(173) := STA  & R0 & ADDR_LMT_C;         -- armazena chaves no limite das centenas
        tmp(174) := STA  & R0 & ADDR_HEX2;          -- armazena chaves em HEX2 (mera visualizacao)
        --  175
        tmp(176) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(177) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(178) := JEQ  & R0 & '0' & x"b4"; -- desvia para 0x0b4 (step 4)
        -- se botao nao pressionado
        tmp(179) := JMP  & R0 & '0' & x"a8"; -- volta para 0x0a8 (step 3)
        -- se botao pressionado, continua

        tmp(180) := STA  & R0 & '1' & x"fe";        -- 0x0b4 (step 4) | limpa KEY[1]
        --  182
        tmp(183) := LDI  & R0 & '0' & b"0000_1111"; -- carrega imediato 15
        tmp(184) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 1111"
        tmp(185) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(186) := STA  & R0 & ADDR_LMT_M;         -- armazena chaves no limite das unidades de milhares
        tmp(187) := STA  & R0 & ADDR_HEX3;          -- armazena chaves em HEX3 (mera visualizacao)
        --  188
        tmp(189) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(190) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(192) := JEQ  & R0 & '0' & x"c2"; -- desvia para 0x0c2 (step 5)
        -- se botao nao pressionado
        tmp(193) := JMP  & R0 & '0' & x"b4"; -- desvia para 0x0b4 (step 4)
        -- se botao pressionado, continua

        tmp(194) := STA  & R0 & '1' & x"fe";        -- 0x0c2 (step 5) | limpa KEY[1]
        --  195
        tmp(196) := LDI  & R0 & '0' & b"0001_1111"; -- carrega imediato 31
        tmp(197) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0001 1111"
        tmp(198) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(199) := STA  & R0 & ADDR_LMT_DM;        -- armazena chaves no limite das dezenas de milhares
        tmp(200) := STA  & R0 & ADDR_HEX4;          -- armazena chaves em HEX4 (mera visualizacao)
        --  201
        tmp(202) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(203) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(204) := JEQ  & R0 & '0' & x"ce"; -- desvia para 0x0ce (step 6)
        -- se botao nao pressionado
        tmp(205) := JMP  & R0 & '0' & x"c2"; -- desvia para 0x0c2 (step 5)
        -- se botao pressionado, continua

        tmp(206) := STA  & R0 & '1' & x"fe";        -- 0x0ce (step 6) | limpa KEY[1]
        --  207
        tmp(208) := LDI  & R0 & '0' & b"0011_1111"; -- carrega imediato 63
        tmp(209) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0011 1111"
        tmp(210) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(211) := STA  & R0 & ADDR_LMT_CM;        -- armazena chaves no limite das centenas de milhares
        tmp(212) := STA  & R0 & ADDR_HEX5;          -- armazena chaves em HEX5 (mera visualizacao)
        --  213
        tmp(214) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(215) := CEQ  & R0 & ADDR_ONE;    -- compara com 1
        tmp(216) := JEQ  & R0 & '0' & x"da"; -- desvia para 0x0da
        -- se botao nao pressionado
        tmp(217) := JMP  & R0 & '0' & x"ce"; -- desvia para 0x0ce (step 6)
        -- se botao pressionado, continua

        tmp(218) := STA  & R0 & '1' & x"fe"; -- 0x0da | limpeza final em KEY[1]
        tmp(219) := LDA  & R0 & ADDR_ZERO;   -- carrega zero
        tmp(220) := STA  & R0 & ADDR_LEDR;   -- zera LEDs
        
        tmp(221) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina



        -- 0x0f0 | verifica contagem
        tmp(240) := LDA  & R0 & ADDR_U;      -- carrega valor das unidades
        tmp(241) := CEQ  & R0 & ADDR_LMT_U;  -- compara com valor limite
        tmp(242) := JEQ  & R0 & '0' & x"f4"; -- se for igual, desvia para 0x0f4
        tmp(243) := JMP  & R0 & '1' & x"08"; -- desvia para 0x108

        tmp(244) := LDA  & R0 & ADDR_D;      -- 0x0f4 | carrega valor das dezenas 
        tmp(245) := CEQ  & R0 & ADDR_LMT_D;  -- compara com o valor limite
        tmp(246) := JEQ  & R0 & '0' & x"f8"; -- se for igual, desvia para 0x0f8
        tmp(247) := JMP  & R0 & '1' & x"08"; -- desvia para 0x108

        tmp(248) := LDA  & R0 & ADDR_C;      -- 0x0f8 | carrega o valor das centenas
        tmp(249) := CEQ  & R0 & ADDR_LMT_C;  -- compara com o valor limite
        tmp(250) := JEQ  & R0 & '0' & x"fc"; -- se for igual, desvia para 0x0fc
        tmp(251) := JMP  & R0 & '1' & x"08"; -- desvia para 0x108

        tmp(252) := LDA  & R0 & ADDR_M;      -- 0x0fc | carrega unidades de milhares
        tmp(253) := CEQ  & R0 & ADDR_LMT_M;  -- compara com o valor limite
        tmp(254) := JEQ  & R0 & '1' & x"00"; -- se for igual, desvia para 0x100
        tmp(255) := JMP  & R0 & '1' & x"08"; -- desvia para 0x108

        tmp(256) := LDA  & R0 & ADDR_DM;     -- 0x100 | carrega dezenas de milhares
        tmp(257) := CEQ  & R0 & ADDR_LMT_DM; -- compara com o valor limite
        tmp(258) := JEQ  & R0 & '1' & x"04"; -- se for igual, desvia para 0x104
        tmp(259) := JMP  & R0 & '1' & x"08"; -- desvia para 0x108

        tmp(260) := LDA  & R0 & ADDR_CM;     -- 0x104 | carrega centenas de milhares
        tmp(261) := CEQ  & R0 & ADDR_LMT_CM; -- compara com o valor limite
        tmp(262) := JEQ  & R0 & '1' & x"0b"; -- se for igual, desvia para 0x10b

        -- se algum dos valores não for igual a seu respectivo limite,
        -- garantimos que a contagem pode continuar
        tmp(264) := LDI  & R0 & '0' & x"00"; -- 0x108 | carrega zero
        tmp(265) := STA  & R0 & ADDR_FLAG;   -- flag = zero
        tmp(266) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina

        -- se todos os valores (unidades, dezenas...) forem iguais 
        -- aos seus respectivos limites, devemos ativar a flag de inibicao
        tmp(267) := LDI  & R0 & '0' & x"01"; -- 0x10b | carrega imediato 1
        tmp(268) := STA  & R0 & ADDR_FLAG;   -- flag = 1
        tmp(269) := STA  & R0 & ADDR_LED8;   -- led da flag de inibicao
        tmp(270) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina



        -- 0x120 rotina principal
        tmp(288) := STA  & R0 & '1' & x"fe"; -- limpeza KEY[1]
        tmp(289) := STA  & R0 & '1' & x"ff"; -- limpeza KEY[0]
        
        
        tmp(292) := JSR  & R0 & '0' & x"01"; -- desvia para 0x001 (inicializa memoria)
        
        tmp(294) := JSR  & R0 & '0' & x"80"; -- desvia para 0x080 (reinicia contagem)
        tmp(295) := JMP  & R0 & '1' & x"40"; -- desvia para 0x140 (loop principal)

            -- 0x12c
            tmp(300) := JSR  & R0 & '0' & x"20"; -- desvia para 0x020 (incrementa contagem)
            tmp(301) := JSR  & R0 & '0' & x"60"; -- desvia para 0x060 (atualiza LCDs)
            tmp(302) := JMP  & R0 & '1' & x"46"; -- desvia para 0x140 (retorna para o loop principal)

            -- 0x136
            tmp(310) := JSR  & R0 & '0' & x"90"; -- desvia para 0x090 (atualiza limites)
            tmp(311) := JSR  & R0 & '0' & x"80"; -- desvia para 0x080 (reinicia contagem)
            tmp(312) := JMP  & R0 & '1' & x"43"; -- desvia para 0x140 (retorna para o loop principal)

        -- 0x140
        tmp(320) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(321) := CEQ  & R0 & ADDR_ONE;    -- compara com 1 (pressionado)
        tmp(322) := JEQ  & R0 & '1' & x"36"; -- desvia para 0x136 se KEY1 pressionado

        -- 0x143
        tmp(323) := LDA  & R0 & ADDR_KEY0;   -- carrega KEY[0]
        tmp(324) := CEQ  & R0 & ADDR_ONE;    -- compara com 1 (pressionado)
        tmp(325) := JEQ  & R0 & '1' & x"2c"; -- desvia para 0x12c se KEY0 pressionado

        -- 0x146
        tmp(326) := LDA  & R0 & ADDR_FPGA_RST; -- carrega botao de reset
        tmp(327) := CEQ  & R0 & ADDR_ZERO;     -- compara com zero (pressionado)
        tmp(328) := JEQ  & R0 & '1' & x"20";   -- desvia para 0x120 (reseta o loop principal)

        -- 0x149
        tmp(329) := JSR  & R0 & '0' & x"f0"; -- desvia para 0x0f0 (verifica contagem)
        tmp(330) := JSR  & R0 & '0' & x"0f"; -- desvia para 0x00f (atualiza leds)

        tmp(331) := JMP  & R0 & '1' & x"40"; -- desvia para 0x140
    
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin

    Dado <= memROM (to_integer(unsigned(Endereco)));

end architecture;
