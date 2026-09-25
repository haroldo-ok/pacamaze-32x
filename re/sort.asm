; sort @ 0x2E7F len 0x100
00002e7f <.data+0x2e7f>:
    2e7f:	55                   	push   %bp
    2e80:	8b ec                	mov    %sp,%bp
    2e82:	83 ec 08             	sub    $0x8,%sp
    2e85:	ff 76 08             	push   0x8(%bp)
    2e88:	66 ff 76 04          	pushl  0x4(%bp)
    2e8c:	e8 c2 ff             	call   0x2e51
    2e8f:	83 c4 06             	add    $0x6,%sp
    2e92:	8b 46 08             	mov    0x8(%bp),%ax
    2e95:	89 46 fe             	mov    %ax,-0x2(%bp)
    2e98:	c1 e0 02             	shl    $0x2,%ax
    2e9b:	03 46 04             	add    0x4(%bp),%ax
    2e9e:	89 46 f8             	mov    %ax,-0x8(%bp)
    2ea1:	eb 49                	jmp    0x2eec
    2ea3:	c4 5e 04             	les    0x4(%bp),%bx
    2ea6:	66 26 8b 07          	mov    %es:(%bx),%eax
    2eaa:	66 89 46 fa          	mov    %eax,-0x6(%bp)
    2eae:	8b 5e f8             	mov    -0x8(%bp),%bx
    2eb1:	26 8b 47 fe          	mov    %es:-0x2(%bx),%ax
    2eb5:	26 8b 57 fc          	mov    %es:-0x4(%bx),%dx
    2eb9:	8b 5e 04             	mov    0x4(%bp),%bx
    2ebc:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    2ec0:	26 89 17             	mov    %dx,%es:(%bx)
    2ec3:	8b 5e f8             	mov    -0x8(%bp),%bx
    2ec6:	8b 46 fc             	mov    -0x4(%bp),%ax
    2ec9:	8b 56 fa             	mov    -0x6(%bp),%dx
    2ecc:	26 89 47 fe          	mov    %ax,%es:-0x2(%bx)
    2ed0:	26 89 57 fc          	mov    %dx,%es:-0x4(%bx)
    2ed4:	6a 01                	push   $0x1
    2ed6:	8b 46 fe             	mov    -0x2(%bp),%ax
    2ed9:	48                   	dec    %ax
    2eda:	50                   	push   %ax
    2edb:	66 ff 76 04          	pushl  0x4(%bp)
    2edf:	e8 81 fe             	call   0x2d63
    2ee2:	83 c4 08             	add    $0x8,%sp
    2ee5:	83 6e f8 04          	subw   $0x4,-0x8(%bp)
    2ee9:	ff 4e fe             	decw   -0x2(%bp)
    2eec:	83 7e fe 01          	cmpw   $0x1,-0x2(%bp)
    2ef0:	7f b1                	jg     0x2ea3
    2ef2:	c9                   	leave
    2ef3:	c3                   	ret
    2ef4:	55                   	push   %bp
    2ef5:	8b ec                	mov    %sp,%bp
    2ef7:	83 7e 04 00          	cmpw   $0x0,0x4(%bp)
    2efb:	7c 05                	jl     0x2f02
    2efd:	8b 46 04             	mov    0x4(%bp),%ax
    2f00:	eb 05                	jmp    0x2f07
    2f02:	8b 46 04             	mov    0x4(%bp),%ax
    2f05:	f7 d8                	neg    %ax
    2f07:	5d                   	pop    %bp
    2f08:	c3                   	ret
    2f09:	55                   	push   %bp
    2f0a:	8b ec                	mov    %sp,%bp
    2f0c:	c4 5e 04             	les    0x4(%bp),%bx
    2f0f:	66 26 8b 47 02       	mov    %es:0x2(%bx),%eax
    2f14:	66 0f a4 c2 10       	shld   $0x10,%eax,%edx
    2f19:	5d                   	pop    %bp
    2f1a:	c3                   	ret
    2f1b:	55                   	push   %bp
    2f1c:	8b ec                	mov    %sp,%bp
    2f1e:	c4 5e 04             	les    0x4(%bp),%bx
    2f21:	66 26 8b 47 06       	mov    %es:0x6(%bx),%eax
    2f26:	66 0f a4 c2 10       	shld   $0x10,%eax,%edx
    2f2b:	5d                   	pop    %bp
    2f2c:	c3                   	ret
    2f2d:	55                   	push   %bp
    2f2e:	8b ec                	mov    %sp,%bp
    2f30:	1e                   	push   %ds
    2f31:	c5 56 04             	lds    0x4(%bp),%dx
    2f34:	b0 00                	mov    $0x0,%al
    2f36:	b4 3d                	mov    $0x3d,%ah
    2f38:	cd 21                	int    $0x21
    2f3a:	8b d8                	mov    %ax,%bx
    2f3c:	b9 00 00             	mov    $0x0,%cx
    2f3f:	8b 56 0e             	mov    0xe(%bp),%dx
    2f42:	b0 00                	mov    $0x0,%al
    2f44:	b4 42                	mov    $0x42,%ah
    2f46:	cd 21                	int    $0x21
    2f48:	8b 4e 0c             	mov    0xc(%bp),%cx
    2f4b:	c5 56 08             	lds    0x8(%bp),%dx
    2f4e:	b4 3f                	mov    $0x3f,%ah
    2f50:	cd 21                	int    $0x21
    2f52:	b4 3e                	mov    $0x3e,%ah
    2f54:	cd 21                	int    $0x21
    2f56:	1f                   	pop    %ds
    2f57:	5d                   	pop    %bp
    2f58:	c3                   	ret
    2f59:	55                   	push   %bp
    2f5a:	8b ec                	mov    %sp,%bp
    2f5c:	83 ec 06             	sub    $0x6,%sp
    2f5f:	56                   	push   %si
    2f60:	57                   	push   %di
    2f61:	8b 46 08             	mov    0x8(%bp),%ax
    2f64:	ba 60 00             	mov    $0x60,%dx
    2f67:	f7 ea                	imul   %dx
    2f69:	05 16 7f             	add    $0x7f16,%ax
    2f6c:	8c 5e fe             	mov    %ds,-0x2(%bp)
    2f6f:	89 46 fc             	mov    %ax,-0x4(%bp)
    2f72:	c7 46 fa 04 00       	movw   $0x4,-0x6(%bp)
    2f77:	1e                   	push   %ds
    2f78:	8b 46 0a             	mov    0xa(%bp),%ax
    2f7b:	05 00 a0             	add    $0xa000,%ax
    2f7e:	8e                 	mov    %ax,%es
