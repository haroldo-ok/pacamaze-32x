; checkobjects @ 0xC4A len 0x180
00000c4a <.data+0xc4a>:
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
     cf0:	e8 b9 11             	call   0x1eac
     cf3:	83 c4 04             	add    $0x4,%sp
     cf6:	8b d8                	mov    %ax,%bx
     cf8:	8e c2                	mov    %dx,%es
     cfa:	66 26 ff 37          	pushl  %es:(%bx)
     cfe:	e8 99 19             	call   0x269a
     d01:	83 c4 06             	add    $0x6,%sp
     d04:	16                   	push   %ss
     d05:	8d 46 f6             	lea    -0xa(%bp),%ax
     d08:	50                   	push   %ax
     d09:	e8 dc 14             	call   0x21e8
     d0c:	83 c4 04             	add    $0x4,%sp
     d0f:	89 46 fe             	mov    %ax,-0x2(%bp)
     d12:	e9 fb 00             	jmp    0xe10
     d15:	8b 46 04             	mov    0x4(%bp),%ax
     d18:	05 00 fe             	add    $0xfe00,%ax
     d1b:	50                   	push   %ax
     d1c:	e8 29 12             	call   0x1f48
     d1f:	83 c4 02             	add    $0x2,%sp
     d22:	50                   	push   %ax
     d23:	8b 46 08             	mov    0x8(%bp),%ax
     d26:	05 00 fe             	add    $0xfe00,%ax
     d29:	50                   	push   %ax
     d2a:	e8 1b 12             	call   0x1f48
     d2d:	83 c4 02             	add    $0x2,%sp
     d30:	5a                   	pop    %dx
     d31:	3b d0                	cmp    %ax,%dx
     d33:	7e 2e                	jle    0xd63
     d35:	66 81 7e 04 00 02 00 	cmpl   $0x200,0x4(%bp)
     d3c:	00 
     d3d:	7e 05                	jle    0xd44
     d3f:	a1 df 7e             	mov    0x7edf,%ax
     d42:	eb 03                	jmp    0xd47
     d44:	a1 e1 7e             	mov    0x7ee1,%ax
     d47:	89 46 ec             	mov    %ax,-0x14(%bp)
     d4a:	6a 02                	push   $0x2
     d4c:	e8 06 12             	call   0x1f55
     d4f:	83 c4 02             	add    $0x2,%sp
     d52:	0b c0                	or     %ax,%ax
     d54:	75 05                	jne    0xd5b
     d56:	a1 df 7e             	mov    0x7edf,%ax
     d59:	eb 03                	jmp    0xd5e
     d5b:	a1 e1 7e             	mov    0x7ee1,%ax
     d5e:	89 46 ea             	mov    %ax,-0x16(%bp)
     d61:	eb 2c                	jmp    0xd8f
     d63:	66 81 7e 08 00 02 00 	cmpl   $0x200,0x8(%bp)
     d6a:	00 
     d6b:	7e 05                	jle    0xd72
     d6d:	a1 df 7e             	mov    0x7edf,%ax
     d70:	eb 03                	jmp    0xd75
     d72:	a1 e1 7e             	mov    0x7ee1,%ax
     d75:	89 46 ea             	mov    %ax,-0x16(%bp)
     d78:	6a 02                	push   $0x2
     d7a:	e8 d8 11             	call   0x1f55
     d7d:	83 c4 02             	add    $0x2,%sp
     d80:	0b c0                	or     %ax,%ax
     d82:	75 05                	jne    0xd89
     d84:	a1 df 7e             	mov    0x7edf,%ax
     d87:	eb 03                	jmp    0xd8c
     d89:	a1 e1 7e             	mov    0x7ee1,%ax
     d8c:	89 46 ec             	mov    %ax,-0x14(%bp)
     d8f:	16                   	push   %ss
     d90:	8d 46 f6             	lea    -0xa(%bp),%ax
     d93:	50                   	push   %ax
     d94:	e8 15 11             	call   0x1eac
     d97:	83 c4 04             	add    $0x4,%sp
     d9a:	89 56 e8             	mov    %dx,-0x18(%bp)
     d9d:	89 46 e6             	mov    %ax,-0x1a(%bp)
     da0:	ff 76 ea             	push   -0x16(%bp)
     da3:	ff 76 ec             	push   -0x14(%bp)
     da6:	c4 5e e6             	les    -0x1a(%bp),%bx
     da9:	66 26 ff 37          	pushl  %es:(%bx)
     dad:	26 c4 1f             	les    %es:(%bx),%bx
     db0:	26 8b 1f             	mov    %es:(%bx),%bx
     db3:	ff 57 0a             	call   *0xa(%bx)
     db6:	83 c4 08             	add    $0x8,%sp
     db9:	c4 5e 10             	les    0x10(%bp),%bx
     dbc:	26 83 07 0a          	addw   $0xa,%es:(%bx)
     dc0:	66 68 0c 01 4e 00    	pushl  $0x4e010c
     dc6:	26 ff 37             	push   %es:(%bx)
     dc9:	e8               	call   0x3017
