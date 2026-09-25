; isrhead @ 0x9C0 len 0x70
000009c0 <.data+0x9c0>:
     9c0:	ae                   	scas   %es:(%di),%al
     9c1:	00 a0 ae 00          	add    %ah,0xae(%bx,%si)
     9c5:	b4 00                	mov    $0x0,%ah
     9c7:	3d b9 00             	cmp    $0xb9,%ax
     9ca:	74 71                	je     0xa3d
     9cc:	7f 1f                	jg     0x9ed
     9ce:	3d 4b 00             	cmp    $0x4b,%ax
     9d1:	74 39                	je     0xa0c
     9d3:	7f 0c                	jg     0x9e1
     9d5:	3d 39 00             	cmp    $0x39,%ax
     9d8:	74 5c                	je     0xa36
     9da:	3d 48 00             	cmp    $0x48,%ax
     9dd:	74 1f                	je     0x9fe
     9df:	eb 61                	jmp    0xa42
     9e1:	3d 4d 00             	cmp    $0x4d,%ax
     9e4:	74 2d                	je     0xa13
     9e6:	3d 50 00             	cmp    $0x50,%ax
     9e9:	74 1a                	je     0xa05
     9eb:	eb 55                	jmp    0xa42
     9ed:	2d c8 00             	sub    $0xc8,%ax
     9f0:	8b d8                	mov    %ax,%bx
     9f2:	83 fb 08             	cmp    $0x8,%bx
     9f5:	77 4b                	ja     0xa42
     9f7:	d1 e3                	shl    $1,%bx
     9f9:	2e ff a7 51 0a       	jmp    *%cs:0xa51(%bx)
     9fe:	c6 06 af 00 01       	movb   $0x1,0xaf
     a03:	eb 3d                	jmp    0xa42
     a05:	c6 06 b0 00 01       	movb   $0x1,0xb0
     a0a:	eb 36                	jmp    0xa42
     a0c:	c6 06 b1 00 01       	movb   $0x1,0xb1
     a11:	eb 2f                	jmp    0xa42
     a13:	c6 06 b2 00 01       	movb   $0x1,0xb2
     a18:	eb 28                	jmp    0xa42
     a1a:	c6 06 af 00 00       	movb   $0x0,0xaf
     a1f:	eb 21                	jmp    0xa42
     a21:	c6 06 b0 00 00       	movb   $0x0,0xb0
     a26:	eb 1a                	jmp    0xa42
     a28:	c6 06 b1 00 00       	movb   $0x0,0xb1
     a2d:	eb 13                	jmp    0xa42
     a2f:	c6           	movb   $0x0,0xb2
