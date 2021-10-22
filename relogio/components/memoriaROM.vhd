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

    
    constant ADDR_ZERO    : std_logic_vector(8 downto 0) := '0' & x"00"; -- endereco da constante 0
    constant ADDR_ONE     : std_logic_vector(8 downto 0) := '0' & x"01"; -- endereco da constante 1
    constant ADDR_TWO     : std_logic_vector(8 downto 0) := '0' & x"02"; -- endereco da constante 2
    constant ADDR_THREE   : std_logic_vector(8 downto 0) := '0' & x"03"; -- endereco da constante 2
    constant ADDR_FOUR    : std_logic_vector(8 downto 0) := '0' & x"04"; -- endereco da constante 2
    constant ADDR_SIX     : std_logic_vector(8 downto 0) := '0' & x"05"; -- endereco da constante 6
    constant ADDR_TEN     : std_logic_vector(8 downto 0) := '0' & x"06"; -- endereco da constante 10

    constant ADDR_MODE    : std_logic_vector(8 downto 0) := '0' & x"07"; -- endereco do bit de "modo 12h"
    constant ADDR_FLAG    : std_logic_vector(8 downto 0) := '0' & x"08"; -- endereco do bit de flag que indica AM/PM

    constant ADDR_US      : std_logic_vector(8 downto 0) := '0' & x"0a"; -- endereco das unidades de segundos
    constant ADDR_DS      : std_logic_vector(8 downto 0) := '0' & x"0b"; -- endereco das dezenas de segundos
    constant ADDR_UM      : std_logic_vector(8 downto 0) := '0' & x"0c"; -- endereco das unidades de minutos
    constant ADDR_DM      : std_logic_vector(8 downto 0) := '0' & x"0d"; -- endereco das dezenas de minutos
    constant ADDR_UH      : std_logic_vector(8 downto 0) := '0' & x"0e"; -- endereco das unidades de horas
    constant ADDR_DH      : std_logic_vector(8 downto 0) := '0' & x"0f"; -- endereco das dezenas de horas

    constant ADDR_START_US  : std_logic_vector(8 downto 0) := '0' & x"10"; -- endereco do limite das unidades de segundos
    constant ADDR_START_DS  : std_logic_vector(8 downto 0) := '0' & x"11"; -- endereco do limite das dezenas de segundos
    constant ADDR_START_UM  : std_logic_vector(8 downto 0) := '0' & x"12"; -- endereco do limite das unidades de minutos
    constant ADDR_START_DM  : std_logic_vector(8 downto 0) := '0' & x"13"; -- endereco do limite das dezenas de minutos
    constant ADDR_START_UH  : std_logic_vector(8 downto 0) := '0' & x"14"; -- endereco do limite das unidades de horas
    constant ADDR_START_DH  : std_logic_vector(8 downto 0) := '0' & x"15"; -- endereco do limite das dezenas de horas

    constant CLEAR_KEY1     : std_logic_vector(8 downto 0) := '1' & x"fe";
    constant CLEAR_KEY0     : std_logic_vector(8 downto 0) := '1' & x"ff";
    constant CLEAR_TIME    : std_logic_vector(8 downto 0) := '1' & x"fd";

    constant R0 : std_logic_vector(1 downto 0) := "00"; -- registrador 1
    constant R1 : std_logic_vector(1 downto 0) := "01"; -- registrador 2
    constant R2 : std_logic_vector(1 downto 0) := "10"; -- registrador 3
    constant R3 : std_logic_vector(1 downto 0) := "11"; -- registrador 4
    
    function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin

        
        tmp(0) := JMP  & R0  & '1' & x"d0"; -- desvia para 0x1d0 (rotina principal)
        
        -- 0x001 | inicializa memoria | 1 ~ 31 (31 instrucoes)
        -- inicializa contador de segundos, minutos e horas como zero
        tmp(1)  := LDI  & R0 & '0' & x"00"; -- R0 = 0
        tmp(2)  := LDI  & R1 & '0' & x"01"; -- R1 = 1
        tmp(3)  := LDI  & R2 & '0' & x"02"; -- R2 = 2
        tmp(4)  := LDI  & R3 & '0' & x"03"; -- R3 = 3
        
        tmp(5)  := STA  & R0 & ADDR_ZERO;   -- inicializa zero na memoria
        tmp(6)  := STA  & R1 & ADDR_ONE;    -- inicializa um na memoria
        tmp(7)  := STA  & R2 & ADDR_TWO;    -- inicialzia dois na memoria
        tmp(8)  := STA  & R3 & ADDR_THREE;  -- inicializa tres na memoria
        
        tmp(9)  := LDI  & R1 & '0' & x"04"; -- R1 = 4
        tmp(10) := LDI  & R2 & '0' & x"06"; -- R2 = 6 
        tmp(11) := LDI  & R3 & '0' & x"0a"; -- R3 = 10

        tmp(12) := STA  & R1 & ADDR_FOUR;   -- inicializa tres na memoria
        tmp(13) := STA  & R2 & ADDR_SIX;    -- inicializa quatro na memoria
        tmp(14) := STA  & R3 & ADDR_TEN;    -- inicializa dez

        tmp(15) := LDA  & R0 & ADDR_KEY3;   -- carrega botao KEY(3)
        tmp(16) := CEQ  & R0 & ADDR_ZERO;   -- compara key3 com zero (botao pressionado)
        tmp(17) := JEQ  & R0 & '0' & x"16"; -- se for igual, desvia para 0x016
            -- se nao for igual (botao nao pressionado)
            tmp(18) := LDA & R1 & ADDR_ZERO; -- R1 = 0
            tmp(19) := STA & R1 & ADDR_MODE; -- atualiza flag de "modo 24h"
            tmp(20) := STA & R1 & ADDR_START_UH; -- unidades de horas = 0
            tmp(21) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
            -- se for igual (botao pressionado)
            tmp(22) := LDA & R1 & ADDR_ONE;      -- 0x016
            tmp(23) := STA & R1 & ADDR_MODE;     -- modo am/pm = 1
            tmp(24) := STA & R1 & ADDR_LED9;     -- acende LED9
            tmp(25) := STA & R1 & ADDR_START_UH; -- unidades de horas = 1

        tmp(26) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina


        -- 0x020 | atualiza leds | 32 ~ 55 (24 instrucoes)
        tmp(32) := LDI  & R0 & '0' & x"00"; -- carrega imediato 0
        tmp(33) := STA  & R0 & ADDR_LEDR;   -- LEDS 0 ~ 7 = 0

        tmp(34) := LDA  & R0 & ADDR_FLAG;   -- carrega flag AM/PM
        tmp(35) := STA  & R0 & ADDR_LED8;   -- LED 8 = flag AM/PM

        tmp(36) := LDA  & R0 & ADDR_MODE;   -- carrega indicador de "modo 12h" ligado
        tmp(37) := STA  & R0 & ADDR_LED9;   -- LED 9 = flag "modo 12h"

        tmp(38) := RET  & R0 & '0' & x"00"; -- retorna retorna da sub-rotina



        -- 0x038 | rotina de aumentar contagem | 56 ~ 159 (104 instrucoes)
        tmp(56) := STA  & R0 & CLEAR_TIME;  -- limpa a leitura de tempo

        -- incrementa unidades de segundos
        tmp(61) := LDA  & R0 & ADDR_US;     -- carrega unidades de segundos
        tmp(62) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(63) := CEQ  & R0 & ADDR_TEN;    -- compara com 10
        tmp(64) := JEQ  & R0 & '0' & x"43"; -- se for igual, desvia para 0x043
        -- se nao for igual
        tmp(65) := STA  & R0 & ADDR_US;     -- atualiza unidades de segundos
        tmp(66) := RET  & R0 & ADDR_ZERO;   -- RET & '0' & x"00"; retorna da sub-rotina
        -- se for igual
        tmp(67) := LDI  & R0 & ADDR_ZERO;   -- 0x043 | carrega imediato 0 --edit
        tmp(68) := STA  & R0 & ADDR_US;     -- atualiza unidades

        -- incrementa dezenas de segundos
        tmp(69) := LDA  & R0 & ADDR_DS;     -- carrega dezenas de segundos
        tmp(70) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(71) := CEQ  & R0 & ADDR_SIX;    -- compara com 6
        tmp(72) := JEQ  & R0 & '0' & x"4b"; -- se for igual, desvia para 0x04b
        -- se nao for igual
        tmp(73) := STA  & R0 & ADDR_DS;     -- atualiza dezenas de segundos
        tmp(74) := RET  & R0 & ADDR_ZERO;   -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(75) := LDI  & R0 & ADDR_ZERO;   -- 0x04b | carrega imediato 0 --edit
        tmp(76) := STA  & R0 & ADDR_DS;     -- atualiza dezenas

        -- incrementa unidades de minutos
        tmp(77) := LDA  & R0 & ADDR_UM;     -- carrega unidades de minutos
        tmp(78) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(79) := CEQ  & R0 & ADDR_TEN;    -- compara com 10
        tmp(80) := JEQ  & R0 & '0' & x"53"; -- se for igual, desvia para 0x053
        -- se nao for igual
        tmp(81) := STA  & R0 & ADDR_UM;     -- atualiza unidades de minutos
        tmp(82) := RET  & R0 & ADDR_ZERO;   -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(83) := LDI  & R0 & ADDR_ZERO;   -- 0x053 | carrega imediato 0
        tmp(84) := STA  & R0 & ADDR_UM;     -- atualiza unidades de minutos

        -- incrementa dezenas de minutos
        tmp(85) := LDA  & R0 & ADDR_DM;     -- carrega dezenas de minutos
        tmp(86) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(87) := CEQ  & R0 & ADDR_SIX;    -- compara com 6
        tmp(88) := JEQ  & R0 & '0' & x"5b"; -- se for igual, desvia para 0x05b
        -- se nao for igual
        tmp(89) := STA  & R0 & ADDR_DM;     -- atualiza dezenas de minutos
        tmp(90) := RET  & R0 & ADDR_ZERO;   -- RET & '0' & x"00"; retorna da sub-rotina;
        -- se for igual
        tmp(91) := LDI  & R0 & ADDR_ZERO;   -- 0x05b | carrega imediato 0
        tmp(92) := STA  & R0 & ADDR_DM;     -- atualiza dezenas de minutos
        
        -- incrementa unidades de horas
        tmp(93) := LDA  & R0 & ADDR_UH;     -- carrega unidades de horas
        tmp(94) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(95) := CEQ  & R0 & ADDR_TEN;    -- compara com 10
        tmp(96) := JEQ  & R0 & '0' & x"85"; -- se for igual, desvia para 0x085
            -- se nao for igual (0)
            tmp(97) := LDA & R1 & ADDR_MODE; -- R1 = flag de "modo"
            tmp(98) := CEQ & R1 & ADDR_ONE;  -- compara R1 com 1
            tmp(99) := JEQ & R0 & '0' & x"71"; -- se for igual desvia para 0x071
                -- se nao for igual (1) -- modo 24h
                tmp(100) := CEQ & R0 & ADDR_FOUR; -- compara unidades de horas com 4
                tmp(101) := JEQ & R0 & '0' & x"68"; -- se for igual, desvia para 0x068
                    -- se nao for igual (2)
                    tmp(102) := STA & R0 & ADDR_UH; -- atualiza unidades de horas
                    tmp(103) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                    -- se for igual (2)
                    tmp(104) := LDA & R1 & ADDR_DH; -- 0x068 | carrega dezenas de horas
                    tmp(105) := CEQ & R1 & ADDR_TWO; -- compara com 2
                    tmp(106) := JEQ & R0 & '0' & x"6d"; -- se for igual, desvia para 0x06d
                        -- se nao for igual (3)
                        tmp(107) := STA & R0 & ADDR_UH; -- atualiza unidades de horas
                        tmp(108) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                        -- se for igual (3)
                        tmp(109) := LDA & R2 & ADDR_ZERO; -- 0x06d
                        tmp(110) := STA & R2 & ADDR_UH;
                        tmp(111) := STA & R2 & ADDR_DH;
                        tmp(112) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                
                -- se for igual (1) -- modo 12h
                tmp(113) := CEQ & R0 & ADDR_THREE; -- 0x071 | compara unidades de horas com 3
                tmp(114) := JEQ & R0 & '0' & x"75"; -- desvia para 0x075
                    -- se nao for igual (2)
                    tmp(115) := STA & R0 & ADDR_UH;   -- atualiza unidades de horas
                    tmp(116) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                    -- se for igual (2)
                    tmp(117) := LDA & R1 & ADDR_DH;     -- R1 = dezenas de horas
                    tmp(118) := CEQ & R1 & ADDR_ONE;    -- compara com 1
                    tmp(119) := JEQ & R0 & '0' & x"7a"; -- desvia para 0x07a
                        -- se nao for igual (3)
                        tmp(120) := STA & R0 & ADDR_UH;   -- atualiza unidades de horas
                        tmp(121) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                        -- se for igual (3)
                        tmp(122) := LDA & R2 & ADDR_ZERO; -- 0x07a | R2 = 0
                        tmp(123) := STA & R2 & ADDR_DH;   -- dezenas de horas = 0
                        tmp(124) := LDA & R3 & ADDR_ONE;  -- R3 = 1
                        tmp(125) := STA & R3 & ADDR_UH;   -- unidades de horas = 1

                        tmp(126) := LDA & R1 & ADDR_FLAG; -- R1 = flag
                        tmp(127) := CEQ & R1 & ADDR_ONE;  -- compara R1 com 1
                        tmp(128) := JEQ & R0 & '0' & x"83"; -- desvia para 0x083
                            -- se nao for igual
                            tmp(129) := STA & R3 & ADDR_FLAG; -- flag am/pm = 1
                            tmp(130) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina
                            -- se for igual
                            tmp(131) := STA & R2 & ADDR_FLAG; -- 0x083 | flag am/pm = 0
                            tmp(132) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotine

            -- se for igual (0)
            tmp(133) := LDI & R0 & ADDR_ZERO;  -- 0x085 | carrega imediato 0
            tmp(134) := STA & R0 & ADDR_UH;     -- atualiza dezenas de horas
                
        -- incrementa dezenas de horas
        tmp(135) := LDA  & R0 & ADDR_DH;     -- carrega dezenas de horas
        tmp(136) := SOMA & R0 & ADDR_ONE;    -- soma 1
        tmp(137) := STA  & R0 & ADDR_DH;     -- atualiza dezenas de horas
        tmp(138) := RET  & R0 & ADDR_ZERO;   -- retorna da sub-rotina


        -- 0x0a0 | atualizar LCDs | 160 ~ 207 (48 instrucoes)
        tmp(160) := LDA & R0 & ADDR_US;    -- carrega o valor das unidades de segundos
        tmp(161) := STA & R0 & ADDR_HEX0;  -- escreve em HEX0
        tmp(162) := LDA & R0 & ADDR_DS;    -- carrega o valor das dezenas de segundos
        tmp(163) := STA & R0 & ADDR_HEX1;  -- escreve em HEX1
        tmp(164) := LDA & R0 & ADDR_UM;    -- carrega o valor das unidades de minutos
        tmp(165) := STA & R0 & ADDR_HEX2;  -- escreve em HEX2
        tmp(166) := LDA & R0 & ADDR_DM;    -- carrega o valor das dezenas de minutos
        tmp(167) := STA & R0 & ADDR_HEX3;  -- escreve em HEX3
        tmp(168) := LDA & R0 & ADDR_UH;    -- carrega o valor das unitades de horas
        tmp(169) := STA & R0 & ADDR_HEX4;  -- escreve em HEX4
        tmp(170) := LDA & R0 & ADDR_DH;    -- carrega o valor das dezenas de horas
        tmp(171) := STA & R0 & ADDR_HEX5;  -- escreve em HEX5

        tmp(172) := RET & R0 & '0' & x"00"; -- retorna da sub-rotina



        -- 0x0d0 | reiniciar contagem | 208 ~ 239 (32 instrucoes)
        tmp(208) := LDA & R0 & ADDR_START_US; -- carrega start das unidades de segundos
        tmp(209) := STA & R0 & ADDR_US;       -- atualiza valor das unidades de segundos
        tmp(210) := LDA & R0 & ADDR_START_DS; -- carrega start das dezenas de minutos
        tmp(211) := STA & R0 & ADDR_DS;       -- atualiza valor das dezenas de minutos
        tmp(212) := LDA & R0 & ADDR_START_UM; -- carrega start das unidades de minutos
        tmp(213) := STA & R0 & ADDR_UM;       -- atualiza valor das unidades de minutos
        tmp(214) := LDA & R0 & ADDR_START_DM; -- carrega start das dezenas de minutos
        tmp(215) := STA & R0 & ADDR_DM;       -- atualiza valor das dezenas de minutos
        tmp(216) := LDA & R0 & ADDR_START_UH; -- carrega start das unidades de horas
        tmp(217) := STA & R0 & ADDR_UH;       -- atualiza valor das unidades de horas
        tmp(218) := LDA & R0 & ADDR_START_DH; -- carrega start das dezenas de horas
        tmp(219) := STA & R0 & ADDR_DH;       -- atualiza valor das dezenas de horas

        tmp(220) := LDI & R0 & '0' & x"00";   -- carrega imediato 0
        tmp(221) := STA & R0 & ADDR_FLAG;     -- atualiza valor da flag;
        -- tmp(222) := STA & R0 & ADDR_MODE;     -- atualiza valor da flag;

        tmp(223) := JMP  & R0 & '0' & x"a0";  -- 0x0a0 | deve saltar para atualizar os LCDs



        -- 0x0f0 alterar hora | 240 ~ 399 (160 instrucoes)
        tmp(240) := STA  & R0 & CLEAR_KEY1;        -- 0x0f0 (step 1) | limpa KEY[1]
        --  241
        tmp(242) := LDI  & R0 & '0' & b"0000_0001"; -- carrega imediato 1
        tmp(243) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0001"
        tmp(244) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(245) := STA  & R0 & ADDR_START_US;      -- armazena chaves no start das unidades de segundos
        tmp(246) := STA  & R0 & ADDR_HEX0;          -- armazena chaves em HEX0 (mera visualizacao)
        --  247
        tmp(248) := LDA  & R0 & ADDR_KEY1;      -- carrega KEY[1]
        tmp(249) := CEQ  & R0 & ADDR_ONE;       -- compara com 1
        tmp(250) := JEQ  & R0 & '0' & x"fc";    -- desvia para 0x0fc (step 2)
        -- se botao nao pressionado
        tmp(251) := JMP  & R0 & '0' & x"f2";    -- volta para 0x0f2 (step 1, linha 242)
        -- se botao pressionado, continua

        tmp(252) := STA  & R0 & CLEAR_KEY1;        -- 0x0fc (step 2) | limpa KEY[1]
        --  253
        tmp(254) := LDI  & R0 & '0' & b"0000_0011"; -- carrega imediato 3
        tmp(255) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0011"
        tmp(256) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(257) := STA  & R0 & ADDR_START_DS;      -- armazena chaves no start das dezenas de segundos
        tmp(258) := STA  & R0 & ADDR_HEX1;          -- armazena chaves em HEX1 (mera visualizacao)
        --  259
        tmp(260) := LDA  & R0 & ADDR_KEY1;      -- carrega KEY[1]
        tmp(261) := CEQ  & R0 & ADDR_ONE;       -- compara com 1
        tmp(262) := JEQ  & R0 & '1' & x"08";    -- desvia para 0x108 (step 3)
        -- se botao nao pressionado
        tmp(263) := JMP  & R0 & '0' & x"fc";    -- volta para 0x0fc (step 2)
        -- se botao pressionado, continua

        tmp(264) := STA  & R0 & CLEAR_KEY1;        -- 0x108 (step 3) | limpa KEY[1]
        --  265
        tmp(266) := LDI  & R0 & '0' & b"0000_0111"; -- carrega imediato 7
        tmp(267) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 0111"
        tmp(268) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(269) := STA  & R0 & ADDR_START_UM;      -- armazena chaves no start das unidades de minutos
        tmp(270) := STA  & R0 & ADDR_HEX2;          -- armazena chaves em HEX2 (mera visualizacao)
        --  271
        tmp(272) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(273) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(274) := JEQ  & R0 & '1' & x"14"; -- desvia para 0x114 (step 4)
        -- se botao nao pressionado
        tmp(275) := JMP  & R0 & '1' & x"08"; -- volta para 0x108 (step 3)
        -- se botao pressionado, continua

        tmp(276) := STA  & R0 & CLEAR_KEY1;        -- 0x114 (step 4) | limpa KEY[1]
        --  277
        tmp(278) := LDI  & R0 & '0' & b"0000_1111"; -- carrega imediato 15
        tmp(279) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0000 1111"
        tmp(280) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(281) := STA  & R0 & ADDR_START_DM;      -- armazena chaves no start das dezenas de minutos
        tmp(282) := STA  & R0 & ADDR_HEX3;          -- armazena chaves em HEX3 (mera visualizacao)
        --  283
        tmp(284) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(285) := CEQ  & R0 & ADDR_ONE;   -- compara com 1
        tmp(286) := JEQ  & R0 & '1' & x"20"; -- desvia para 0x120 (step 5)
        -- se botao nao pressionado
        tmp(287) := JMP  & R0 & '1' & x"14"; -- desvia para 0x114 (step 4)
        -- se botao pressionado, continua

        tmp(288) := STA  & R0 & CLEAR_KEY1;        -- 0x120 (step 5) | limpa KEY[1]
        --  289
        tmp(290) := LDI  & R0 & '0' & b"0001_1111"; -- carrega imediato 31
        tmp(291) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0001 1111"
        tmp(292) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(293) := STA  & R0 & ADDR_START_UH;      -- armazena chaves no start das unidades de horas
        tmp(294) := STA  & R0 & ADDR_HEX4;          -- armazena chaves em HEX4 (mera visualizacao)
        --  295
        tmp(296) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(297) := CEQ  & R0 & ADDR_ONE;    -- compara com 1
        tmp(298) := JEQ  & R0 & '1' & x"2c"; -- desvia para 0x12c (step 6)
        -- se botao nao pressionado
        tmp(299) := JMP  & R0 & '1' & x"20"; -- desvia para 0x120 (step 5)
        -- se botao pressionado, continua

        tmp(300) := STA  & R0 & CLEAR_KEY1;        -- 0x12c (step 6) | limpa KEY[1]
        --  301
        tmp(302) := LDI  & R0 & '0' & b"0011_1111"; -- carrega imediato 63
        tmp(303) := STA  & R0 & ADDR_LEDR;          -- acende LEDs "0011 1111"
        tmp(304) := LDA  & R0 & ADDR_SWR;           -- faz leitura das chaves SW 7~0
        tmp(305) := STA  & R0 & ADDR_START_DH;      -- armazena chaves no start das dezenas de horas
        tmp(306) := STA  & R0 & ADDR_HEX5;          -- armazena chaves em HEX5 (mera visualizacao)
        --  307
        tmp(308) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(309) := CEQ  & R0 & ADDR_ONE;    -- compara com 1
        tmp(310) := JEQ  & R0 & '1' & x"38"; -- desvia para 0x138
        -- se botao nao pressionado
        tmp(311) := JMP  & R0 & '1' & x"2c"; -- desvia para 0x12c (step 6)
        -- se botao pressionado, continua

        tmp(312) := STA  & R0 & CLEAR_KEY1; -- 0x138 | limpeza final em KEY[1]
        tmp(313) := LDA  & R0 & ADDR_ZERO;   -- carrega zero
        tmp(314) := STA  & R0 & ADDR_LEDR;   -- zera LEDs
        
        tmp(315) := RET  & R0 & '0' & x"00"; -- retorna da sub-rotina



        -- 0x190 | zerar LCDs | 400 ~ 407 (8 instrucoes)
        tmp(400) := LDA & R0 & ADDR_ZERO; -- carrega 0
        tmp(401) := STA & R0 & ADDR_HEX0; -- zera display 0
        tmp(402) := STA & R0 & ADDR_HEX1; -- zera display 1
        tmp(403) := STA & R0 & ADDR_HEX2; -- zera display 2
        tmp(404) := STA & R0 & ADDR_HEX3; -- zera display 3
        tmp(405) := STA & R0 & ADDR_HEX4; -- zera display 4
        tmp(406) := STA & R0 & ADDR_HEX5; -- zera display 5
        tmp(407) := RET & R0 & ADDR_ZERO; -- retorna da sub-rotina


        -- 0x198 | resetar valores | 408 ~ 422 (8 instrucoes)
        tmp(408) := LDA & R0 & ADDR_ZERO; -- carrega 0
        tmp(409) := STA & R0 & ADDR_START_US; -- zera display 0
        tmp(410) := STA & R0 & ADDR_START_DS; -- zera display 1
        tmp(411) := STA & R0 & ADDR_START_UM; -- zera display 2
        tmp(412) := STA & R0 & ADDR_START_DM; -- zera display 3
        tmp(413) := STA & R0 & ADDR_START_DH; -- zera display 3

        tmp(414) := LDA & R1 & ADDR_MODE;     -- carrega flag de '12h/24h'
        tmp(415) := CEQ & R1 & ADDR_ONE;      -- compara com um (modo 12h)
        tmp(416) := JEQ & R0 & '1' & x"a4";     -- se for igual, desvia para 0x1a4
        -- se nao for 1
        tmp(417) := LDI & R2 & ADDR_ZERO;     -- R2 = 0
        tmp(418) := STA & R2 & ADDR_START_UH; -- atualiza start das unidades de horas
        tmp(419) := RET & R0 & ADDR_ZERO;     -- retorna da sub-rotina
        -- se for 1
        tmp(420) := LDI & R2 & ADDR_ONE;      -- 0x1a4 | R2 = 1
        tmp(421) := STA & R2 & ADDR_START_UH; -- atualzia start das unidades de horas
        tmp(422) := RET & R0 & ADDR_ZERO;     -- retorna da sub-rotina
        



        -- 0x1d0 rotina principal | 464 ~ 509 (46 instrucoes)
        tmp(464) := STA  & R0 & CLEAR_KEY1; -- limpeza KEY[1]
        tmp(465) := STA  & R0 & CLEAR_KEY0; -- limpeza KEY[0]
        
        
        tmp(466) := JSR  & R0 & '0' & x"01"; -- desvia para 0x001 (inicializa memoria)
        tmp(467) := JSR  & R0 & '1' & x"98"; -- desvia para 0x198 (reset de valores)
        tmp(468) := JSR  & R0 & '0' & x"d0"; -- desvia para 0x0d0 (reinicia contagem)
        tmp(469) := JMP  & R0 & '1' & x"e5"; -- desvia para 0x1e5 (loop principal)

            -- 0x1dc
            tmp(476) := JSR & R0 & '0' & x"38"; -- desvia para 0x038 (incrementa contagem)
            tmp(477) := JSR & R0 & '0' & x"a0"; -- desvia para 0x0a0 (atualiza LCDs)
            tmp(478) := JMP & R0 & '1' & x"e5"; -- desvia para 0x1e5 (retorna para o loop principal)

            -- 0x1e0
            tmp(480) := JSR & R0 & '1' & x"90"; -- desvia para 0x190 (zerar LCDs)
            tmp(481) := JSR & R0 & '0' & x"f0"; -- desvia para 0x0f0 (atualiza hora)
            tmp(482) := JSR & R0 & '0' & x"d0"; -- desvia para 0x0d0 (reinicia contagem)
            tmp(483) := JMP & R0 & '1' & x"e5"; -- desvia para 0x1e5 (retorna para o loop principal)

        -- 0x1e5
        tmp(485) := LDA  & R0 & ADDR_KEY1;   -- carrega KEY[1]
        tmp(486) := CEQ  & R0 & ADDR_ONE;    -- compara com 1 (pressionado)
        tmp(487) := JEQ  & R0 & '1' & x"e0"; -- desvia para 0x1e0 se KEY1 pressionado

        -- 0x143
        tmp(488) := LDA  & R0 & ADDR_TIME;   -- carrega KEY[0]
        tmp(489) := CEQ  & R0 & ADDR_ONE;    -- compara com 1 (pressionado)
        tmp(490) := JEQ  & R0 & '1' & x"dc"; -- desvia para 0x1dc se KEY0 pressionado

        -- 0x146
        tmp(491) := LDA  & R0 & ADDR_FPGA_RST; -- carrega botao de reset
        tmp(492) := CEQ  & R0 & ADDR_ZERO;     -- compara com zero (pressionado)
        tmp(493) := JEQ  & R0 & '1' & x"d0";   -- desvia para 0x1d0 (reseta o loop principal)

        -- 0x149
        -- tmp(494) := JSR  & R0 & '1' & x"90"; -- desvia para 0x190 (verifica contagem)
        tmp(495) := JSR  & R0 & '0' & x"20"; -- desvia para 0x020 (atualiza leds)

        tmp(496) := JMP  & R0 & '1' & x"e5"; -- desvia para 0x1e5
    
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin

    Dado <= memROM (to_integer(unsigned(Endereco)));

end architecture;
