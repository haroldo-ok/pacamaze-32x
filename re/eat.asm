; eat @ 0xE42 len 0x120
00000e42 <.data+0xe42>:
     e42:	55                   	push   %bp
     e43:	8b ec                	mov    %sp,%bp
     e45:	83 ec 02             	sub    $0x2,%sp
     e48:	66 8b 46 04          	mov    0x4(%bp),%eax
     e4c:	66 c1 f8 05          	sar    $0x5,%eax
     e50:	8b 56 08             	mov    0x8(%bp),%dx
     e53:	83 e2 e0             	and    $0xffe0,%dx
     e56:	03 c2                	add    %dx,%ax
     e58:	89 46 fe             	mov    %ax,-0x2(%bp)
     e5b:	8b 5e fe             	mov    -0x2(%bp),%bx
     e5e:	d1 e3                	shl    $1,%bx
     e60:	81 bf b3 6d 00 24    	cmpw   $0x2400,0x6db3(%bx)
     e66:	75 39                	jne    0xea1
     e68:	8b 5e fe             	mov    -0x2(%bp),%bx
     e6b:	d1 e3                	shl    $1,%bx
     e6d:	c7 87 b3 6d 00 20    	movw   $0x2000,0x6db3(%bx)
     e73:	c4 5e 0c             	les    0xc(%bp),%bx
     e76:	26 ff 07             	incw   %es:(%bx)
     e79:	c4 5e 10             	les    0x10(%bp),%bx
     e7c:	26 ff 0f             	decw   %es:(%bx)
     e7f:	66 68 0c 01 4e 00    	pushl  $0x4e010c
     e85:	c4 5e 0c             	les    0xc(%bp),%bx
     e88:	26 ff 37             	push   %es:(%bx)
     e8b:	e8 89 21             	call   0x3017
     e8e:	83 c4 06             	add    $0x6,%sp
     e91:	66 68 46 00 3c 00    	pushl  $0x3c0046
     e97:	66 ff 76 14          	pushl  0x14(%bp)
     e9b:	e8 d7 10             	call   0x1f75
     e9e:	83 c4 08             	add    $0x8,%sp
     ea1:	c9                   	leave
     ea2:	c3                   	ret
     ea3:	55                   	push   %bp
     ea4:	8b ec                	mov    %sp,%bp
     ea6:	83 ec 04             	sub    $0x4,%sp
     ea9:	c4 5e 16             	les    0x16(%bp),%bx
     eac:	26 ff 0f             	decw   %es:(%bx)
     eaf:	66 68 0c 01 88 00    	pushl  $0x88010c
     eb5:	26 ff 37             	push   %es:(%bx)
     eb8:	e8 5c 21             	call   0x3017
     ebb:	83 c4 06             	add    $0x6,%sp
     ebe:	66 68 c8 00 28 00    	pushl  $0x2800c8
     ec4:	66 ff 76 04          	pushl  0x4(%bp)
     ec8:	e8 aa 10             	call   0x1f75
     ecb:	83 c4 08             	add    $0x8,%sp
     ece:	b0 00                	mov    $0x0,%al
     ed0:	a2 b3 00             	mov    %al,0xb3
     ed3:	a2 b4 00             	mov    %al,0xb4
     ed6:	ff 76 14             	push   0x14(%bp)
     ed9:	8d 46 0c             	lea    0xc(%bp),%ax
     edc:	8c d2                	mov    %ss,%dx
     ede:	b9 08 00             	mov    $0x8,%cx
     ee1:	e8 1a 33             	call   0x41fe
     ee4:	66 68 00 00 07 00    	pushl  $0x70000
     eea:	6a 00                	push   $0x0
     eec:	e8 f7 0f             	call   0x1ee6
     eef:	83 c4 10             	add    $0x10,%sp
     ef2:	89 56 fe             	mov    %dx,-0x2(%bp)
     ef5:	89 46 fc             	mov    %ax,-0x4(%bp)
     ef8:	52                   	push   %dx
     ef9:	50                   	push   %ax
     efa:	66 ff 76 08          	pushl  0x8(%bp)
     efe:	e8 5a 12             	call   0x215b
     f01:	83 c4 08             	add    $0x8,%sp
     f04:	c9                   	leave
     f05:	c3                   	ret
     f06:	55                   	push   %bp
     f07:	8b ec                	mov    %sp,%bp
     f09:	83 ec 08             	sub    $0x8,%sp
     f0c:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     f11:	c7 46 fc 01 00       	movw   $0x1,-0x4(%bp)
     f16:	eb 33                	jmp    0xf4b
     f18:	66 ff 76 04          	pushl  0x4(%bp)
     f1c:	e8 8d 0f             	call   0x1eac
     f1f:	83 c4 04             	add    $0x4,%sp
     f22:	89 56 fa             	mov    %dx,-0x6(%bp)
     f25:	89 46 f8             	mov    %ax,-0x8(%bp)
     f28:	8d 46 08             	lea    0x8(%bp),%ax
     f2b:	8c d2                	mov    %ss,%dx
     f2d:	b9 08 00             	mov    $0x8,%cx
     f30:	e8 cb 32             	call   0x41fe
     f33:	c4 5e f8             	les    -0x8(%bp),%bx
     f36:	66 26 ff 37          	pushl  %es:(%bx)
     f3a:	26 c4 1f             	les    %es:(%bx),%bx
     f3d:	26 8b 1f             	mov    %es:(%bx),%bx
     f40:	ff 17                	call   *(%bx)
     f42:	83 c4 0c             	add    $0xc,%sp
     f45:	01 46 fe             	add    %ax,-0x2(%bp)
     f48:	ff 46 fc             	incw   -0x4(%bp)
     f4b:	8b 46 fc             	mov    -0x4(%bp),%ax
     f4e:	3b 46 10             	cmp    0x10(%bp),%ax
     f51:	7e c5                	jle    0xf18
     f53:	66 ff 76 04          	pushl  0x4(%bp)
     f57:	e8 65 0f             	call   0x1ebf
     f5a:	83 c4 04             	add    $0x4,%sp
     f5d:	0b c0                	or     %ax,%ax
     f5f:	75 b0                	jne    0xf11
     f61:	8b               	mov    -0x2(%bp),%ax
