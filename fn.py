#!/usr/bin/env python3
import subprocess, sys
code = open('/tmp/code.bin','rb').read()
def fnstart(addr):
    # scan back for 55 8B EC (push bp; mov bp,sp), max 3000 bytes
    for i in range(addr, max(0,addr-3000), -1):
        if code[i]==0x55 and code[i+1]==0x8B and code[i+2]==0xEC:
            return i
    return None
def disasm(start, length=160):
    out = subprocess.run(['objdump','-b','binary','-m','i8086','--adjust-vma=0x0','-D',
                          f'--start-address={start}',f'--stop-address={start+length}','/tmp/code.bin'],
                         capture_output=True, text=True).stdout
    return '\n'.join(l for l in out.splitlines() if l.strip() and not l.startswith('/tmp') and 'Disassembly' not in l and '<.data>' not in l)
if __name__ == '__main__':
    for a in sys.argv[1:]:
        addr = int(a,16)
        print(f"--- addr 0x{addr:04X} -> fnstart 0x{fnstart(addr) or 0:04X}")
