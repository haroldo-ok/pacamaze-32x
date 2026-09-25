#!/usr/bin/env python3
"""Find references to a DS offset in code segment + disassemble context."""
import subprocess, sys
code = open('/tmp/code.bin','rb').read()
def disasm(start, length=64):
    out = subprocess.run(['objdump','-b','binary','-m','i8086','--adjust-vma=0x0','-D',
                          f'--start-address={start}',f'--stop-address={start+length}','/tmp/code.bin'],
                         capture_output=True, text=True).stdout
    lines = [l for l in out.splitlines() if l.strip() and not l.startswith('/tmp') and 'Disassembly' not in l and '<.data>' not in l]
    return '\n'.join(lines)
def xref(ds_off, context_before=24, context_after=40):
    lo, hi = ds_off & 0xFF, (ds_off >> 8) & 0xFF
    hits = []
    for i in range(len(code)-1):
        if code[i]==lo and code[i+1]==hi:
            hits.append(i)
    return hits
if __name__ == '__main__':
    off = int(sys.argv[1], 16)
    pre = int(sys.argv[2]) if len(sys.argv)>2 else 24
    post = int(sys.argv[3]) if len(sys.argv)>3 else 40
    hits = xref(off)
    print(f"xrefs to DS:0x{off:04X}: {len(hits)} hits")
    for h in hits[:12]:
        s = max(0, h-pre)
        print(f"--- code offset 0x{h:04X} (imm at +{h-s}) ---")
        print(disasm(s, pre+post+8))
