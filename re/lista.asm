; lista @ 0x1E73 len 0x150
00001e73 <.data+0x1e73>:
    1e73:	55                   	push   %bp
    1e74:	8b ec                	mov    %sp,%bp
    1e76:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    1e7b:	75 12                	jne    0x1e8f
    1e7d:	6a 08                	push   $0x8
    1e7f:	e8 e3 24             	call   0x4365
    1e82:	83 c4 02             	add    $0x2,%sp
    1e85:	89 56 06             	mov    %dx,0x6(%bp)
    1e88:	89 46 04             	mov    %ax,0x4(%bp)
    1e8b:	0b c2                	or     %dx,%ax
    1e8d:	74 15                	je     0x1ea4
    1e8f:	c4 5e 04             	les    0x4(%bp),%bx
    1e92:	66 8b 46 08          	mov    0x8(%bp),%eax
    1e96:	66 26 89 07          	mov    %eax,%es:(%bx)
    1e9a:	ff 76 06             	push   0x6(%bp)
    1e9d:	53                   	push   %bx
    1e9e:	e8 90 00             	call   0x1f31
    1ea1:	83 c4 04             	add    $0x4,%sp
    1ea4:	8b 56 06             	mov    0x6(%bp),%dx
    1ea7:	8b 46 04             	mov    0x4(%bp),%ax
    1eaa:	5d                   	pop    %bp
    1eab:	c3                   	ret
    1eac:	55                   	push   %bp
    1ead:	8b ec                	mov    %sp,%bp
    1eaf:	c4 5e 04             	les    0x4(%bp),%bx
    1eb2:	26 8b 57 06          	mov    %es:0x6(%bx),%dx
    1eb6:	26 8b 47 04          	mov    %es:0x4(%bx),%ax
    1eba:	05 04 00             	add    $0x4,%ax
    1ebd:	5d                   	pop    %bp
    1ebe:	c3                   	ret
    1ebf:	55                   	push   %bp
    1ec0:	8b ec                	mov    %sp,%bp
    1ec2:	c4 5e 04             	les    0x4(%bp),%bx
    1ec5:	26 c4 5f 04          	les    %es:0x4(%bx),%bx
    1ec9:	66 26 8b 07          	mov    %es:(%bx),%eax
    1ecd:	c4 5e 04             	les    0x4(%bp),%bx
    1ed0:	66 26 89 47 04       	mov    %eax,%es:0x4(%bx)
    1ed5:	66 26 83 7f 04 00    	cmpl   $0x0,%es:0x4(%bx)
    1edb:	74 05                	je     0x1ee2
    1edd:	b8 01 00             	mov    $0x1,%ax
    1ee0:	eb 02                	jmp    0x1ee4
    1ee2:	33 c0                	xor    %ax,%ax
    1ee4:	5d                   	pop    %bp
    1ee5:	c3                   	ret
    1ee6:	55                   	push   %bp
    1ee7:	8b ec                	mov    %sp,%bp
    1ee9:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    1eee:	75 12                	jne    0x1f02
    1ef0:	6a 1e                	push   $0x1e
    1ef2:	e8 70 24             	call   0x4365
    1ef5:	83 c4 02             	add    $0x2,%sp
    1ef8:	89 56 06             	mov    %dx,0x6(%bp)
    1efb:	89 46 04             	mov    %ax,0x4(%bp)
    1efe:	0b c2                	or     %dx,%ax
    1f00:	74 27                	je     0x1f29
    1f02:	8d 46 0a             	lea    0xa(%bp),%ax
    1f05:	8c d2                	mov    %ss,%dx
    1f07:	b9 08 00             	mov    $0x8,%cx
    1f0a:	e8 f1 22             	call   0x41fe
    1f0d:	ff 76 08             	push   0x8(%bp)
    1f10:	66 ff 76 04          	pushl  0x4(%bp)
    1f14:	e8 ac 01             	call   0x20c3
    1f17:	83 c4 0e             	add    $0xe,%sp
    1f1a:	c4 5e 04             	les    0x4(%bp),%bx
    1f1d:	26 c7 07 f9 01       	movw   $0x1f9,%es:(%bx)
    1f22:	8b 46 12             	mov    0x12(%bp),%ax
    1f25:	26 89 47 1c          	mov    %ax,%es:0x1c(%bx)
    1f29:	8b 56 06             	mov    0x6(%bp),%dx
    1f2c:	8b 46 04             	mov    0x4(%bp),%ax
    1f2f:	5d                   	pop    %bp
    1f30:	c3                   	ret
    1f31:	55                   	push   %bp
    1f32:	8b ec                	mov    %sp,%bp
    1f34:	c4 5e 04             	les    0x4(%bp),%bx
    1f37:	26 c4 1f             	les    %es:(%bx),%bx
    1f3a:	66 26 8b 07          	mov    %es:(%bx),%eax
    1f3e:	c4 5e 04             	les    0x4(%bp),%bx
    1f41:	66 26 89 47 04       	mov    %eax,%es:0x4(%bx)
    1f46:	5d                   	pop    %bp
    1f47:	c3                   	ret
    1f48:	55                   	push   %bp
    1f49:	8b ec                	mov    %sp,%bp
    1f4b:	8b 46 04             	mov    0x4(%bp),%ax
    1f4e:	99                   	cwtd
    1f4f:	33 c2                	xor    %dx,%ax
    1f51:	2b c2                	sub    %dx,%ax
    1f53:	5d                   	pop    %bp
    1f54:	c3                   	ret
    1f55:	55                   	push   %bp
    1f56:	8b ec                	mov    %sp,%bp
    1f58:	e8 c5 24             	call   0x4420
    1f5b:	66 0f bf c0          	movswl %ax,%eax
    1f5f:	66 0f bf 56 04       	movswl 0x4(%bp),%edx
    1f64:	66 0f af c2          	imul   %edx,%eax
    1f68:	66 bb 00 80 00 00    	mov    $0x8000,%ebx
    1f6e:	66 99                	cltd
    1f70:	66 f7 fb             	idiv   %ebx
    1f73:	5d                   	pop    %bp
    1f74:	c3                   	ret
    1f75:	55                   	push   %bp
    1f76:	8b ec                	mov    %sp,%bp
    1f78:	c4 5e 04             	les    0x4(%bp),%bx
    1f7b:	8b 46 08             	mov    0x8(%bp),%ax
    1f7e:	26 89 07             	mov    %ax,%es:(%bx)
    1f81:	8b 46 0a             	mov    0xa(%bp),%ax
    1f84:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    1f88:	5d                   	pop    %bp
    1f89:	c3                   	ret
    1f8a:	55                   	push   %bp
    1f8b:	8b ec                	mov    %sp,%bp
    1f8d:	c4 5e 04             	les    0x4(%bp),%bx
    1f90:	26 8b 47 08          	mov    %es:0x8(%bx),%ax
    1f94:	5d                   	pop    %bp
    1f95:	c3                   	ret
    1f96:	55                   	push   %bp
    1f97:	8b ec                	mov    %sp,%bp
    1f99:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    1f9e:	75 12                	jne    0x1fb2
    1fa0:	6a 04                	push   $0x4
    1fa2:	e8 c0 23             	call   0x4365
    1fa5:	83 c4 02             	add    $0x2,%sp
    1fa8:	89 56 06             	mov    %dx,0x6(%bp)
    1fab:	89 46 04             	mov    %ax,0x4(%bp)
    1fae:	0b c2                	or     %dx,%ax
    1fb0:	74 0c                	je     0x1fbe
    1fb2:	c4 5e 04             	les    0x4(%bp),%bx
    1fb5:	33 c0                	xor    %ax,%ax
    1fb7:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    1fbb:	26 89 07             	mov    %ax,%es:(%bx)
    1fbe:	8b 56 06             	mov    0x6(%bp),%dx
    1fc1:	8b 46              	mov    0x4(%bp),%ax
