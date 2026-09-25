; checkobjects2 @ 0xDCA len 0x90
00000dca <.data+0xdca>:
     dca:	4b                   	dec    %bx
     dcb:	22 83 c4 06          	and    0x6c4(%bp,%di),%al
     dcf:	eb 3f                	jmp    0xe10
     dd1:	c4 5e 0c             	les    0xc(%bp),%bx
     dd4:	26 83 07 05          	addw   $0x5,%es:(%bx)
     dd8:	66 68 0c 01 88 00    	pushl  $0x88010c
     dde:	26 ff 37             	push   %es:(%bx)
     de1:	e8 33 22             	call   0x3017
     de4:	83 c4 06             	add    $0x6,%sp
     de7:	6a 03                	push   $0x3
     de9:	16                   	push   %ss
     dea:	8d 46 f6             	lea    -0xa(%bp),%ax
     ded:	50                   	push   %ax
     dee:	e8 bb 10             	call   0x1eac
     df1:	83 c4 04             	add    $0x4,%sp
     df4:	8b d8                	mov    %ax,%bx
     df6:	8e c2                	mov    %dx,%es
     df8:	66 26 ff 37          	pushl  %es:(%bx)
     dfc:	e8 9b 18             	call   0x269a
     dff:	83 c4 06             	add    $0x6,%sp
     e02:	16                   	push   %ss
     e03:	8d 46 f6             	lea    -0xa(%bp),%ax
     e06:	50                   	push   %ax
     e07:	e8 de 13             	call   0x21e8
     e0a:	83 c4 04             	add    $0x4,%sp
     e0d:	89 46 fe             	mov    %ax,-0x2(%bp)
     e10:	66 68 2c 01 46 00    	pushl  $0x46012c
     e16:	66 ff 76 18          	pushl  0x18(%bp)
     e1a:	e8 58 11             	call   0x1f75
     e1d:	83 c4 08             	add    $0x8,%sp
     e20:	66 ff 76 14          	pushl  0x14(%bp)
     e24:	e8 63 11             	call   0x1f8a
     e27:	83 c4 04             	add    $0x4,%sp
     e2a:	0b c0                	or     %ax,%ax
     e2c:	74 12                	je     0xe40
     e2e:	16                   	push   %ss
     e2f:	8d 46 f6             	lea    -0xa(%bp),%ax
     e32:	50                   	push   %ax
     e33:	e8 89 10             	call   0x1ebf
     e36:	83 c4 04             	add    $0x4,%sp
     e39:	0b c0                	or     %ax,%ax
     e3b:	74 03                	je     0xe40
     e3d:	e9 24 fe             	jmp    0xc64
     e40:	c9                   	leave
     e41:	c3                   	ret
     e42:	55                   	push   %bp
     e43:	8b ec                	mov    %sp,%bp
     e45:	83 ec 02             	sub    $0x2,%sp
     e48:	66 8b 46 04          	mov    0x4(%bp),%eax
     e4c:	66 c1 f8 05          	sar    $0x5,%eax
     e50:	8b 56 08             	mov    0x8(%bp),%dx
     e53:	83 e2 e0             	and    $0xffe0,%dx
     e56:	03 c2                	add    %dx,%ax
     e58:	89 46              	mov    %ax,-0x2(%bp)
