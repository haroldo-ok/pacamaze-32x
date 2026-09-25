; mainflow @ 0x1D80 len 0xE0
00001d80 <.data+0x1d80>:
    1d80:	7e 6a                	jle    0x1dec
    1d82:	08 e8                	or     %ch,%al
    1d84:	29 23                	sub    %sp,(%bp,%di)
    1d86:	83 c4 02             	add    $0x2,%sp
    1d89:	89 16 e9 7e          	mov    %dx,0x7ee9
    1d8d:	a3 e7 7e             	mov    %ax,0x7ee7
    1d90:	68 00 00             	push   $0x0
    1d93:	68 62 3c             	push   $0x3c62
    1d96:	6a 08                	push   $0x8
    1d98:	e8 23 23             	call   0x40be
    1d9b:	83 c4 06             	add    $0x6,%sp
    1d9e:	ba 43 00             	mov    $0x43,%dx
    1da1:	b0 34                	mov    $0x34,%al
    1da3:	ee                   	out    %al,(%dx)
    1da4:	66 a1 ef 7e          	mov    0x7eef,%eax
    1da8:	66 bb 00 01 00 00    	mov    $0x100,%ebx
    1dae:	66 99                	cltd
    1db0:	66 f7 fb             	idiv   %ebx
    1db3:	66 52                	push   %edx
    1db5:	ba 40 00             	mov    $0x40,%dx
    1db8:	66 58                	pop    %eax
    1dba:	ee                   	out    %al,(%dx)
    1dbb:	66 a1 ef 7e          	mov    0x7eef,%eax
    1dbf:	66 99                	cltd
    1dc1:	66 f7 fb             	idiv   %ebx
    1dc4:	ba 40 00             	mov    $0x40,%dx
    1dc7:	ee                   	out    %al,(%dx)
    1dc8:	5d                   	pop    %bp
    1dc9:	c3                   	ret
    1dca:	55                   	push   %bp
    1dcb:	8b ec                	mov    %sp,%bp
    1dcd:	ba 43 00             	mov    $0x43,%dx
    1dd0:	b0 34                	mov    $0x34,%al
    1dd2:	ee                   	out    %al,(%dx)
    1dd3:	ba 40 00             	mov    $0x40,%dx
    1dd6:	b0 00                	mov    $0x0,%al
    1dd8:	ee                   	out    %al,(%dx)
    1dd9:	ee                   	out    %al,(%dx)
    1dda:	66 ff 36 e7 7e       	pushl  0x7ee7
    1ddf:	6a 08                	push   $0x8
    1de1:	e8 da 22             	call   0x40be
    1de4:	83 c4 06             	add    $0x6,%sp
    1de7:	5d                   	pop    %bp
    1de8:	c3                   	ret
    1de9:	55                   	push   %bp
    1dea:	8b ec                	mov    %sp,%bp
    1dec:	83 ec 04             	sub    $0x4,%sp
    1def:	e8 bc 02             	call   0x20ae
    1df2:	e8 00 e5             	call   0x2f5
    1df5:	e8 18 fc             	call   0x1a10
    1df8:	e8 dd 05             	call   0x23d8
    1dfb:	e8 22 fd             	call   0x1b20
    1dfe:	6a 09                	push   $0x9
    1e00:	e8 ac 22             	call   0x40af
    1e03:	83 c4 02             	add    $0x2,%sp
    1e06:	89 16 e5 7e          	mov    %dx,0x7ee5
    1e0a:	a3 e3 7e             	mov    %ax,0x7ee3
    1e0d:	68 00 00             	push   $0x0
    1e10:	68 a9 09             	push   $0x9a9
    1e13:	6a 09                	push   $0x9
    1e15:	e8 a6 22             	call   0x40be
    1e18:	83 c4 06             	add    $0x6,%sp
    1e1b:	6a 46                	push   $0x46
    1e1d:	e8 41 ff             	call   0x1d61
    1e20:	83 c4 02             	add    $0x2,%sp
    1e23:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    1e28:	8b 5e fe             	mov    -0x2(%bp),%bx
    1e2b:	ff 46 fe             	incw   -0x2(%bp)
    1e2e:	c6 87 b2 0b 00       	movb   $0x0,0xbb2(%bx)
    1e33:	81 7e fe 01 32       	cmpw   $0x3201,-0x2(%bp)
    1e38:	7c ee                	jl     0x1e28
    1e3a:	e8 62 16             	call   0x349f
    1e3d:	89 46 fc             	mov    %ax,-0x4(%bp)
    1e40:	eb 13                	jmp    0x1e55
    1e42:	e8 0c fd             	call   0x1b51
    1e45:	e8 9e f4             	call   0x12e6
    1e48:	0b c0                	or     %ax,%ax
    1e4a:	74 03                	je     0x1e4f
    1e4c:	e8 f3 18             	call   0x3742
    1e4f:	e8 4d 16             	call   0x349f
    1e52:	89 46 fc             	mov    %ax,-0x4(%bp)
    1e55:	83 7e fc 00          	cmpw   $0x0,-0x4(%bp)
    1e59:	75 e7                	jne    0x1e42
    1e5b:	e8 94 1a             	call   0x38f2
    1e5e:	e8 69              	call   0x1dca
