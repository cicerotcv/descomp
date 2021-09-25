import argparse
from os import read


def parse_cmd(cmd):
    parts = cmd.strip().split(' ')
    mnemonic = parts[0]
    hab_mem = 1 if (mnemonic in ["STA", "LDA", "CEQ", "SOMA", "SUBA"]) else 0
    if len(parts) > 1:
        number = parts[-1]
        instr = hex(int(number)).lstrip('0x').zfill(2)
    else:
        instr = '00'

    return (mnemonic, hab_mem, instr)


def read_file(filename: str):
    with open(filename, 'r', encoding='utf-8') as file:
        commands = [line for line in file.read().strip().split("\n")]
    return commands


def save_file(lines: list, out: str):
    filename = out.replace(".", "_out.")
    with open(filename, 'w+', encoding='utf-8') as file:
        file.write("\n".join(lines))
        # for command in lines:
        #     print(command, file=file)


def main(source):
    commands = read_file(source)

    template = "tmp({idx})\t:= {mnemonic}\t& '{hab_mem}' & x\"{instr}\";"

    commands_vhdl = []
    for (idx, cmd) in enumerate(commands):
        (mnemonic, hab_mem, instr) = parse_cmd(cmd)
        full_command = template.format(idx=idx, mnemonic=mnemonic,
                                       hab_mem=hab_mem, instr=instr)
        print(full_command)
        commands_vhdl.append(full_command)

    save_file(commands_vhdl, source)


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
