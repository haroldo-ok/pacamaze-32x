; fire @ 0xEA3 len 0x120
00000ea3 <.data+0xea3>:
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
     f61:	8b 46 fe             	mov    -0x2(%bp),%ax
     f64:	c9                   	leave
     f65:	c3                   	ret
     f66:	55                   	push   %bp
     f67:	8b ec                	mov    %sp,%bp
     f69:	83 ec 2e             	sub    $0x2e,%sp
     f6c:	a1 df 7e             	mov    0x7edf,%ax
     f6f:	a3 b5 00             	mov    %ax,0xb5
     f72:	a3 b7 00             	mov    %ax,0xb7
     f75:	a1 e1 7e             	mov    0x7ee1,%ax
     f78:	a3 b9 00             	mov    %ax,0xb9
     f7b:	a3 bb 00             	mov    %ax,0xbb
     f7e:	a1 b5 00             	mov    0xb5,%ax
     f81:	89 46 f8             	mov    %ax,-0x8(%bp)
     f84:	a1 b7 00             	mov    0xb7,%ax
     f87:	89 46 fa             	mov    %ax,-0x6(%bp)
     f8a:	a1 b9 00             	mov    0xb9,%ax
     f8d:	89 46 fc             	mov    %ax,-0x4(%bp)
     f90:	a1 bb 00             	mov    0xbb,%ax
     f93:	89 46 fe             	mov    %ax,-0x2(%bp)
     f96:	a1 df 7e             	mov    0x7edf,%ax
     f99:	a3 bd 00             	mov    %ax,0xbd
     f9c:	a1 e1 7e             	mov    0x7ee1,%ax
     f9f:	a3 bf 00             	mov    %ax,0xbf
     fa2:	a1 df 7e             	mov    0x7edf,%ax
     fa5:	a3 c1 00             	mov    %ax,0xc1
     fa8:	a1 e1 7e             	mov    0x7ee1,%ax
     fab:	a3 c3 00             	mov    %ax,0xc3
     fae:	a1 bd 00             	mov    0xbd,%ax
     fb1:	89 46 f0             	mov    %ax,-0x10(%bp)
     fb4:	a1 bf 00             	mov    0xbf,%ax
     fb7:	89 46 f2             	mov    %ax,-0xe(%bp)
     fba:	a1 c1 00             	mov    0xc1,%ax
     fbd:	89 46 f4             	mov    %ax,-0xc(%bp)
     fc0:	a1 c3 00             	mov    0xc3,%ax
