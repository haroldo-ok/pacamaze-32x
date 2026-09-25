; entry @ 0x0 len 0x60
       0:	ba ea 05             	mov    $0x5ea,%dx
       3:	2e 89 16 8b 02       	mov    %dx,%cs:0x28b
       8:	b4 30                	mov    $0x30,%ah
       a:	cd 21                	int    $0x21
       c:	8b 2e 02 00          	mov    0x2,%bp
      10:	8b 1e 2c 00          	mov    0x2c,%bx
      14:	8e da                	mov    %dx,%ds
      16:	a3 7d 00             	mov    %ax,0x7d
      19:	8c 06 7b 00          	mov    %es,0x7b
      1d:	89 1e 77 00          	mov    %bx,0x77
      21:	89 2e 91 00          	mov    %bp,0x91
      25:	e8 51 01             	call   0x179
      28:	a1 77 00             	mov    0x77,%ax
      2b:	8e c0                	mov    %ax,%es
      2d:	33 c0                	xor    %ax,%ax
      2f:	8b d8                	mov    %ax,%bx
      31:	8b f8                	mov    %ax,%di
      33:	b9 ff 7f             	mov    $0x7fff,%cx
      36:	fc                   	cld
      37:	f2 ae                	repnz scas %es:(%di),%al
      39:	e3 43                	jcxz   0x7e
      3b:	43                   	inc    %bx
      3c:	26 38 05             	cmp    %al,%es:(%di)
      3f:	75 f6                	jne    0x37
      41:	80 cd 80             	or     $0x80,%ch
      44:	f7 d9                	neg    %cx
      46:	89 0e 75 00          	mov    %cx,0x75
      4a:	b9 02 00             	mov    $0x2,%cx
      4d:	d3 e3                	shl    %cl,%bx
      4f:	83 c3 10             	add    $0x10,%bx
      52:	83 e3 f0             	and    $0xfff0,%bx
      55:	89 1e 79 00          	mov    %bx,0x79
      59:	8c d2                	mov    %ss,%dx
      5b:	2b ea                	sub    %dx,%bp
      5d:	bf ea 05             	mov    $0x5ea,%di
