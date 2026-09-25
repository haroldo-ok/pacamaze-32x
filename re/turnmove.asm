; turnmove @ 0xBD1 len 0x120
00000bd1 <.data+0xbd1>:
     bd1:	55                   	push   %bp
     bd2:	8b ec                	mov    %sp,%bp
     bd4:	83 ec 02             	sub    $0x2,%sp
     bd7:	a1 ac 00             	mov    0xac,%ax
     bda:	ba 07 00             	mov    $0x7,%dx
     bdd:	f7 ea                	imul   %dx
     bdf:	89 46 fe             	mov    %ax,-0x2(%bp)
     be2:	80 3e b1 00 00       	cmpb   $0x0,0xb1
     be7:	74 08                	je     0xbf1
     be9:	c4 5e 04             	les    0x4(%bp),%bx
     bec:	26 29 07             	sub    %ax,%es:(%bx)
     bef:	eb 10                	jmp    0xc01
     bf1:	80 3e b2 00 00       	cmpb   $0x0,0xb2
     bf6:	74 09                	je     0xc01
     bf8:	c4 5e 04             	les    0x4(%bp),%bx
     bfb:	8b 46 fe             	mov    -0x2(%bp),%ax
     bfe:	26 01 07             	add    %ax,%es:(%bx)
     c01:	c4 5e 04             	les    0x4(%bp),%bx
     c04:	26 8b 07             	mov    %es:(%bx),%ax
     c07:	25 ff 03             	and    $0x3ff,%ax
     c0a:	26 89 07             	mov    %ax,%es:(%bx)
     c0d:	c9                   	leave
     c0e:	c3                   	ret
     c0f:	55                   	push   %bp
     c10:	8b ec                	mov    %sp,%bp
     c12:	83 ec 04             	sub    $0x4,%sp
     c15:	c6 06 b3 00 00       	movb   $0x0,0xb3
     c1a:	ff 76 10             	push   0x10(%bp)
     c1d:	8d 46 08             	lea    0x8(%bp),%ax
     c20:	8c d2                	mov    %ss,%dx
     c22:	b9 08 00             	mov    $0x8,%cx
     c25:	e8 d6 35             	call   0x41fe
     c28:	66 68 00 00 07 00    	pushl  $0x70000
     c2e:	6a 00                	push   $0x0
     c30:	e8 b3 12             	call   0x1ee6
     c33:	83 c4 10             	add    $0x10,%sp
     c36:	89 56 fe             	mov    %dx,-0x2(%bp)
     c39:	89 46 fc             	mov    %ax,-0x4(%bp)
     c3c:	52                   	push   %dx
     c3d:	50                   	push   %ax
     c3e:	66 ff 76 04          	pushl  0x4(%bp)
     c42:	e8 16 15             	call   0x215b
     c45:	83 c4 08             	add    $0x8,%sp
     c48:	c9                   	leave
     c49:	c3                   	ret
     c4a:	55                   	push   %bp
     c4b:	8b ec                	mov    %sp,%bp
     c4d:	83 ec 1a             	sub    $0x1a,%sp
     c50:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     c55:	66 ff 76 14          	pushl  0x14(%bp)
     c59:	16                   	push   %ss
     c5a:	8d 46 f6             	lea    -0xa(%bp),%ax
     c5d:	50                   	push   %ax
     c5e:	e8 12 12             	call   0x1e73
     c61:	83 c4 08             	add    $0x8,%sp
     c64:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
     c68:	74 10                	je     0xc7a
     c6a:	16                   	push   %ss
     c6b:	8d 46 f6             	lea    -0xa(%bp),%ax
     c6e:	50                   	push   %ax
     c6f:	e8 bf 12             	call   0x1f31
     c72:	83 c4 04             	add    $0x4,%sp
     c75:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     c7a:	16                   	push   %ss
     c7b:	8d 46 f6             	lea    -0xa(%bp),%ax
     c7e:	50                   	push   %ax
     c7f:	e8 2a 12             	call   0x1eac
     c82:	83 c4 04             	add    $0x4,%sp
     c85:	89 56 f4             	mov    %dx,-0xc(%bp)
     c88:	89 46 f2             	mov    %ax,-0xe(%bp)
     c8b:	66 ff 76 14          	pushl  0x14(%bp)
     c8f:	16                   	push   %ss
     c90:	8d 46 04             	lea    0x4(%bp),%ax
     c93:	50                   	push   %ax
     c94:	c4 5e f2             	les    -0xe(%bp),%bx
     c97:	66 26 ff 37          	pushl  %es:(%bx)
     c9b:	26 c4 1f             	les    %es:(%bx),%bx
     c9e:	26 8b 1f             	mov    %es:(%bx),%bx
     ca1:	ff 57 06             	call   *0x6(%bx)
     ca4:	83 c4 0c             	add    $0xc,%sp
     ca7:	0b c0                	or     %ax,%ax
     ca9:	75 03                	jne    0xcae
     cab:	e9 72 01             	jmp    0xe20
     cae:	16                   	push   %ss
     caf:	8d 46 f6             	lea    -0xa(%bp),%ax
     cb2:	50                   	push   %ax
     cb3:	e8 f6 11             	call   0x1eac
     cb6:	83 c4 04             	add    $0x4,%sp
     cb9:	89 56 f0             	mov    %dx,-0x10(%bp)
     cbc:	89 46 ee             	mov    %ax,-0x12(%bp)
     cbf:	c4 5e ee             	les    -0x12(%bp),%bx
     cc2:	66 26 ff 37          	pushl  %es:(%bx)
     cc6:	26 c4 1f             	les    %es:(%bx),%bx
     cc9:	26 8b 1f             	mov    %es:(%bx),%bx
     ccc:	ff 57 04             	call   *0x4(%bx)
     ccf:	83 c4 04             	add    $0x4,%sp
     cd2:	b4 00                	mov    $0x0,%ah
     cd4:	3d 61 00             	cmp    $0x61,%ax
     cd7:	75 03                	jne    0xcdc
     cd9:	e9 f5 00             	jmp    0xdd1
     cdc:	3d 62 00             	cmp    $0x62,%ax
     cdf:	74 08                	je     0xce9
     ce1:	3d 65 00             	cmp    $0x65,%ax
     ce4:	74 2f                	je     0xd15
     ce6:	e9 27 01             	jmp    0xe10
     ce9:	6a 03                	push   $0x3
     ceb:	16                   	push   %ss
     cec:	8d 46 f6             	lea    -0xa(%bp),%ax
     cef:	50                   	push   %ax
     cf0:	e8               	call   0x1eac
