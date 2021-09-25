import argparse


def main(source):
    with open(source, 'r', encoding='utf-8') as file:
        commands = [line for line in file.read().strip().split("\n")]

    template = "tmp({idx})\t:= {mnemonic}\t& '{hab_mem}' & x\"{instr}\";"
    full_commands = []
    for (idx, cmd) in enumerate(commands):
        parts = cmd.strip().split(' ')
        mnemonic = parts[0]
        hab_mem = 1 if (mnemonic in ["STA", "LDA",
                        "CEQ", "SOMA", "SUBA"]) else 0
        if len(parts) > 1:
            number = parts[-1]
            instr = hex(int(number)).lstrip('0x').zfill(2)
        else:
            instr = '00'
        full_command = template.format(idx=idx, mnemonic=mnemonic,
                                       hab_mem=hab_mem, instr=instr)
        print(full_command)
        full_commands.append(full_command)

    with open(source.replace(".", "_out."), 'w+') as file:
        for command in full_commands:
            print(command, file=file)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Converts instructions to VHDL syntax.')
    parser.add_argument('-s', '--src', type=str,
                        help='source file with commands')
    args = parser.parse_args()

    source = args.src

    filename_xcpt = "Source file's name must match \"name.txt\""
    file_missing_xcpt = "You should provide a source file"
    if not source:
        raise Exception(file_missing_xcpt)
    if not '.' in source:
        raise Exception(filename_xcpt)

    main(source)
