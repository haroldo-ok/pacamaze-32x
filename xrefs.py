#!/usr/bin/env python3
import subprocess, sys
code = open('/tmp/code.bin','rb').read()
def hits_for(ds_off):
    lo, hi = ds_off & 0xFF, (ds_off >> 8) & 0xFF
    return [i for i in range(len(code)-1) if code[i]==lo and code[i+1]==hi]
def disasm(start, length=90):
    out = subprocess.run(['objdump','-b','binary','-m','i8086','--adjust-vma=0x0','-D',
                          f'--start-address={start}',f'--stop-address={start+length}','/tmp/code.bin'],
                         capture_output=True, text=True).stdout
    return '\n'.join(l for l in out.splitlines() if l.strip() and not l.startswith('/tmp') and 'Disassembly' not in l and '<.data>' not in l)
if __name__ == '__main__':
    for arg in sys.argv[1:]:
        off = int(arg, 16)
        hs = hits_for(off)
        print(f"===== DS:0x{off:04X}: {len(hs)} raw hits =====")
        # filter: keep hits where preceding byte suggests push/mov-imm (68,B8-BF,BA,BE,BF,C7) or part of pushl
        interesting = []
        for h in hs:
            prev = code[h-1] if h>0 else 0
            if prev in (0x68,0xB8,0xB9,0xBA,0xBB,0xBC,0xBD,0xBE,0xBF,0x66,0xC7,0x3D,0x05,0x2D):
                interesting.append(h)
        print(f"  interesting (imm-like): {[hex(h) for h in interesting[:10]]}")
