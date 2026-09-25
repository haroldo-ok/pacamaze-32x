; drawbar @ 0x1B51 len 0x2A0
00001b51 <.data+0x1b51>:
    1b51:	55                   	push   %bp
    1b52:	8b ec                	mov    %sp,%bp
    1b54:	83 ec 10             	sub    $0x10,%sp
    1b57:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    1b5c:	e9 8a 01             	jmp    0x1ce9
    1b5f:	c7 46 f4 00 01       	movw   $0x100,-0xc(%bp)
    1b64:	eb 17                	jmp    0x1b7d
    1b66:	ff 76 fe             	push   -0x2(%bp)
    1b69:	6a 30                	push   $0x30
    1b6b:	66 68 00 00 c7 00    	pushl  $0xc70000
    1b71:	ff 76 f4             	push   -0xc(%bp)
    1b74:	e8 80 09             	call   0x24f7
    1b77:	83 c4 0a             	add    $0xa,%sp
    1b7a:	ff 46 f4             	incw   -0xc(%bp)
    1b7d:	81 7e f4 40 01       	cmpw   $0x140,-0xc(%bp)
    1b82:	7c e2                	jl     0x1b66
    1b84:	c7 46 f4 07 01       	movw   $0x107,-0xc(%bp)
    1b89:	eb 76                	jmp    0x1c01
    1b8b:	90                   	nop
    1b8c:	81 7e f4 07 01       	cmpw   $0x107,-0xc(%bp)
    1b91:	74 1b                	je     0x1bae
    1b93:	81 7e f4 39 01       	cmpw   $0x139,-0xc(%bp)
    1b98:	74 14                	je     0x1bae
    1b9a:	ff 76 fe             	push   -0x2(%bp)
    1b9d:	6a 00                	push   $0x0
    1b9f:	66 68 09 00 37 00    	pushl  $0x370009
    1ba5:	ff 76 f4             	push   -0xc(%bp)
    1ba8:	e8 4c 09             	call   0x24f7
    1bab:	83 c4 0a             	add    $0xa,%sp
    1bae:	ff 76 fe             	push   -0x2(%bp)
    1bb1:	6a 35                	push   $0x35
    1bb3:	66 68 3e 00 5b 00    	pushl  $0x5b003e
    1bb9:	ff 76 f4             	push   -0xc(%bp)
    1bbc:	e8 38 09             	call   0x24f7
    1bbf:	83 c4 0a             	add    $0xa,%sp
    1bc2:	ff 76 fe             	push   -0x2(%bp)
    1bc5:	6a 00                	push   $0x0
    1bc7:	66 68 62 00 71 00    	pushl  $0x710062
    1bcd:	ff 76 f4             	push   -0xc(%bp)
    1bd0:	e8 24 09             	call   0x24f7
    1bd3:	83 c4 0a             	add    $0xa,%sp
    1bd6:	ff 76 fe             	push   -0x2(%bp)
    1bd9:	6a 35                	push   $0x35
    1bdb:	66 68 78 00 95 00    	pushl  $0x950078
    1be1:	ff 76 f4             	push   -0xc(%bp)
    1be4:	e8 10 09             	call   0x24f7
    1be7:	83 c4 0a             	add    $0xa,%sp
    1bea:	ff 76 fe             	push   -0x2(%bp)
    1bed:	6a 35                	push   $0x35
    1bef:	66 68 9c 00 c5 00    	pushl  $0xc5009c
    1bf5:	ff 76 f4             	push   -0xc(%bp)
    1bf8:	e8 fc 08             	call   0x24f7
    1bfb:	83 c4 0a             	add    $0xa,%sp
    1bfe:	ff 46 f4             	incw   -0xc(%bp)
    1c01:	81 7e f4 3a 01       	cmpw   $0x13a,-0xc(%bp)
    1c06:	7d 02                	jge    0x1c0a
    1c08:	eb 82                	jmp    0x1b8c
    1c0a:	ff 76 fe             	push   -0x2(%bp)
    1c0d:	6a 54                	push   $0x54
    1c0f:	66 68 3a 01 5c 00    	pushl  $0x5c013a
    1c15:	66 68 06 01 3d 00    	pushl  $0x3d0106
    1c1b:	e8 a5 09             	call   0x25c3
    1c1e:	83 c4 0c             	add    $0xc,%sp
    1c21:	ff 76 fe             	push   -0x2(%bp)
    1c24:	6a 54                	push   $0x54
    1c26:	66 68 38 01 38 00    	pushl  $0x380138
    1c2c:	66 68 08 01 08 00    	pushl  $0x80108
    1c32:	e8 8e 09             	call   0x25c3
    1c35:	83 c4 0c             	add    $0xc,%sp
    1c38:	ff 76 fe             	push   -0x2(%bp)
    1c3b:	6a 54                	push   $0x54
    1c3d:	66 68 3a 01 72 00    	pushl  $0x72013a
    1c43:	66 68 06 01 61 00    	pushl  $0x610106
    1c49:	e8 77 09             	call   0x25c3
    1c4c:	83 c4 0c             	add    $0xc,%sp
    1c4f:	ff 76 fe             	push   -0x2(%bp)
    1c52:	6a 54                	push   $0x54
    1c54:	66 68 3a 01 96 00    	pushl  $0x96013a
    1c5a:	66 68 06 01 77 00    	pushl  $0x770106
    1c60:	e8 60 09             	call   0x25c3
    1c63:	83 c4 0c             	add    $0xc,%sp
    1c66:	ff 76 fe             	push   -0x2(%bp)
    1c69:	6a 54                	push   $0x54
    1c6b:	66 68 3a 01 c6 00    	pushl  $0xc6013a
    1c71:	66 68 06 01 9b 00    	pushl  $0x9b0106
    1c77:	e8 49 09             	call   0x25c3
    1c7a:	83 c4 0c             	add    $0xc,%sp
    1c7d:	c7 46 f2 00 00       	movw   $0x0,-0xe(%bp)
    1c82:	c7 46 f6 10 01       	movw   $0x110,-0xa(%bp)
    1c87:	c7 46 f4 00 00       	movw   $0x0,-0xc(%bp)
    1c8c:	c7 46 fa b3 75       	movw   $0x75b3,-0x6(%bp)
    1c91:	8b 46 f6             	mov    -0xa(%bp),%ax
    1c94:	89 46 f8             	mov    %ax,-0x8(%bp)
    1c97:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
    1c9c:	8b 46 fa             	mov    -0x6(%bp),%ax
    1c9f:	89 46 fc             	mov    %ax,-0x4(%bp)
    1ca2:	ff 76 fe             	push   -0x2(%bp)
    1ca5:	8b 5e fc             	mov    -0x4(%bp),%bx
    1ca8:	8a 07                	mov    (%bx),%al
    1caa:	50                   	push   %ax
    1cab:	8b 46 f0             	mov    -0x10(%bp),%ax
    1cae:	05 65 00             	add    $0x65,%ax
    1cb1:	50                   	push   %ax
    1cb2:	ff 76 f8             	push   -0x8(%bp)
    1cb5:	e8 07 08             	call   0x24bf
    1cb8:	83 c4 08             	add    $0x8,%sp
    1cbb:	ff 46 fc             	incw   -0x4(%bp)
    1cbe:	ff 46 f0             	incw   -0x10(%bp)
    1cc1:	83 7e f0 0a          	cmpw   $0xa,-0x10(%bp)
    1cc5:	7c db                	jl     0x1ca2
    1cc7:	83 46 fa 0a          	addw   $0xa,-0x6(%bp)
    1ccb:	ff 46 f8             	incw   -0x8(%bp)
    1cce:	ff 46 f4             	incw   -0xc(%bp)
    1cd1:	83 7e f4 0a          	cmpw   $0xa,-0xc(%bp)
    1cd5:	7c c0                	jl     0x1c97
    1cd7:	83 46 f6 0c          	addw   $0xc,-0xa(%bp)
    1cdb:	ff 46 f2             	incw   -0xe(%bp)
    1cde:	83 7e f2 03          	cmpw   $0x3,-0xe(%bp)
    1ce2:	7c a3                	jl     0x1c87
    1ce4:	81 46 fe e8 03       	addw   $0x3e8,-0x2(%bp)
    1ce9:	81 7e fe e8 03       	cmpw   $0x3e8,-0x2(%bp)
    1cee:	7f 03                	jg     0x1cf3
    1cf0:	e9 6c fe             	jmp    0x1b5f
    1cf3:	66 68 0c 01 4e 00    	pushl  $0x4e010c
    1cf9:	6a 00                	push   $0x0
    1cfb:	e8 19 13             	call   0x3017
    1cfe:	83 c4 06             	add    $0x6,%sp
    1d01:	66 68 0c 01 88 00    	pushl  $0x88010c
    1d07:	6a 00                	push   $0x0
    1d09:	e8 0b 13             	call   0x3017
    1d0c:	83 c4 06             	add    $0x6,%sp
    1d0f:	66 68 06 01 40 00    	pushl  $0x400106
    1d15:	1e                   	push   %ds
    1d16:	68 b7 01             	push   $0x1b7
    1d19:	e8 59 13             	call   0x3075
    1d1c:	83 c4 08             	add    $0x8,%sp
    1d1f:	66 68 0c 01 7a 00    	pushl  $0x7a010c
    1d25:	1e                   	push   %ds
    1d26:	68 bd 01             	push   $0x1bd
    1d29:	e8 49 13             	call   0x3075
    1d2c:	83 c4 08             	add    $0x8,%sp
    1d2f:	66 68 06 01 9e 00    	pushl  $0x9e0106
    1d35:	1e                   	push   %ds
    1d36:	68 c2 01             	push   $0x1c2
    1d39:	e8 39 13             	call   0x3075
    1d3c:	83 c4 08             	add    $0x8,%sp
    1d3f:	66 68 06 01 ab 00    	pushl  $0xab0106
    1d45:	1e                   	push   %ds
    1d46:	68 c8 01             	push   $0x1c8
    1d49:	e8 29 13             	call   0x3075
    1d4c:	83 c4 08             	add    $0x8,%sp
    1d4f:	66 68 06 01 b8 00    	pushl  $0xb80106
    1d55:	1e                   	push   %ds
    1d56:	68 ce 01             	push   $0x1ce
    1d59:	e8 19 13             	call   0x3075
    1d5c:	83 c4 08             	add    $0x8,%sp
    1d5f:	c9                   	leave
    1d60:	c3                   	ret
    1d61:	55                   	push   %bp
    1d62:	8b ec                	mov    %sp,%bp
    1d64:	66 c7 06 eb 7e 00 00 	movl   $0x0,0x7eeb
    1d6b:	00 00 
    1d6d:	66 0f b7 5e 04       	movzwl 0x4(%bp),%ebx
    1d72:	66 b8 dd 34 12 00    	mov    $0x1234dd,%eax
    1d78:	66 99                	cltd
    1d7a:	66 f7 fb             	idiv   %ebx
    1d7d:	66 a3 ef 7e          	mov    %eax,0x7eef
    1d81:	6a 08                	push   $0x8
    1d83:	e8 29 23             	call   0x40af
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
    1def:	e8 bc              	call   0x20ae
