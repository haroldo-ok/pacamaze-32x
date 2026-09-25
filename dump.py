#!/usr/bin/env python3
import subprocess, sys
def disasm(start, length):
    out = subprocess.run(['objdump','-b','binary','-m','i8086','--adjust-vma=0x0','-D',
                          f'--start-address={start}',f'--stop-address={start+length}','/tmp/code.bin'],
                         capture_output=True, text=True).stdout
    return '\n'.join(l for l in out.splitlines() if l.strip() and not l.startswith('/tmp') and 'Disassembly' not in l and '<.data>' not in l)
# args: name:start:length ...
import sys
for spec in sys.argv[1:]:
    name, s, l = spec.split(':')
    s, l = int(s,16), int(l,16)
    open(f're/{name}.asm','w').write(f"; {name} @ 0x{s:X} len 0x{l:X}\n" + disasm(s,l) + "\n")
    print(f"wrote re/{name}.asm")
