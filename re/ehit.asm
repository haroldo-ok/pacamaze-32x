; ehit @ 0x2C65 len 0x100
00002c65 <.data+0x2c65>:
    2c65:	55                   	push   %bp
    2c66:	8b ec                	mov    %sp,%bp
    2c68:	83 ec 0c             	sub    $0xc,%sp
    2c6b:	66 ff 76 0c          	pushl  0xc(%bp)
    2c6f:	16                   	push   %ss
    2c70:	8d 46 f8             	lea    -0x8(%bp),%ax
    2c73:	50                   	push   %ax
    2c74:	e8 fc f1             	call   0x1e73
    2c77:	83 c4 08             	add    $0x8,%sp
    2c7a:	16                   	push   %ss
    2c7b:	8d 46 f8             	lea    -0x8(%bp),%ax
    2c7e:	50                   	push   %ax
    2c7f:	e8 2a f2             	call   0x1eac
    2c82:	83 c4 04             	add    $0x4,%sp
    2c85:	8b d8                	mov    %ax,%bx
    2c87:	8e c2                	mov    %dx,%es
    2c89:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
    2c8d:	26 8b 17             	mov    %es:(%bx),%dx
    2c90:	89 46 f6             	mov    %ax,-0xa(%bp)
    2c93:	89 56 f4             	mov    %dx,-0xc(%bp)
    2c96:	50                   	push   %ax
    2c97:	52                   	push   %dx
    2c98:	c4 5e f4             	les    -0xc(%bp),%bx
    2c9b:	26 8b 1f             	mov    %es:(%bx),%bx
    2c9e:	ff 57 04             	call   *0x4(%bx)
    2ca1:	83 c4 04             	add    $0x4,%sp
    2ca4:	3c 62                	cmp    $0x62,%al
    2ca6:	75 43                	jne    0x2ceb
    2ca8:	66 ff 76 f4          	pushl  -0xc(%bp)
    2cac:	e8 5a 02             	call   0x2f09
    2caf:	83 c4 04             	add    $0x4,%sp
    2cb2:	c4 5e 04             	les    0x4(%bp),%bx
    2cb5:	26 8b 57 02          	mov    %es:0x2(%bx),%dx
    2cb9:	2b d0                	sub    %ax,%dx
    2cbb:	52                   	push   %dx
    2cbc:	e8 35 02             	call   0x2ef4
    2cbf:	83 c4 02             	add    $0x2,%sp
    2cc2:	3d 14 00             	cmp    $0x14,%ax
    2cc5:	7d 24                	jge    0x2ceb
    2cc7:	66 ff 76 f4          	pushl  -0xc(%bp)
    2ccb:	e8 4d 02             	call   0x2f1b
    2cce:	83 c4 04             	add    $0x4,%sp
    2cd1:	c4 5e 04             	les    0x4(%bp),%bx
    2cd4:	26 8b 57 06          	mov    %es:0x6(%bx),%dx
    2cd8:	2b d0                	sub    %ax,%dx
    2cda:	52                   	push   %dx
    2cdb:	e8 16 02             	call   0x2ef4
    2cde:	83 c4 02             	add    $0x2,%sp
    2ce1:	3d 14 00             	cmp    $0x14,%ax
    2ce4:	7d 05                	jge    0x2ceb
    2ce6:	b8 01 00             	mov    $0x1,%ax
    2ce9:	eb 02                	jmp    0x2ced
    2ceb:	33 c0                	xor    %ax,%ax
    2ced:	c9                   	leave
    2cee:	c3                   	ret
    2cef:	55                   	push   %bp
    2cf0:	8b ec                	mov    %sp,%bp
    2cf2:	c4 5e 04             	les    0x4(%bp),%bx
    2cf5:	26 ff 77 1c          	push   %es:0x1c(%bx)
    2cf9:	e8 20 d6             	call   0x31c
    2cfc:	83 c4 02             	add    $0x2,%sp
    2cff:	bb 1c 00             	mov    $0x1c,%bx
    2d02:	99                   	cwtd
    2d03:	f7 fb                	idiv   %bx
    2d05:	66 0f bf c0          	movswl %ax,%eax
    2d09:	c4 5e 04             	les    0x4(%bp),%bx
    2d0c:	66 26 8b 57 02       	mov    %es:0x2(%bx),%edx
    2d11:	66 03 d0             	add    %eax,%edx
    2d14:	66 26 89 57 02       	mov    %edx,%es:0x2(%bx)
    2d19:	26 ff 77 1c          	push   %es:0x1c(%bx)
    2d1d:	e8 ea d5             	call   0x30a
    2d20:	83 c4 02             	add    $0x2,%sp
    2d23:	bb 1c 00             	mov    $0x1c,%bx
    2d26:	99                   	cwtd
    2d27:	f7 fb                	idiv   %bx
    2d29:	66 0f bf c0          	movswl %ax,%eax
    2d2d:	c4 5e 04             	les    0x4(%bp),%bx
    2d30:	66 26 8b 57 06       	mov    %es:0x6(%bx),%edx
    2d35:	66 03 d0             	add    %eax,%edx
    2d38:	66 26 89 57 06       	mov    %edx,%es:0x6(%bx)
    2d3d:	33 c0                	xor    %ax,%ax
    2d3f:	5d                   	pop    %bp
    2d40:	c3                   	ret
    2d41:	55                   	push   %bp
    2d42:	8b ec                	mov    %sp,%bp
    2d44:	c4 5e 04             	les    0x4(%bp),%bx
    2d47:	66 26 8b 47 02       	mov    %es:0x2(%bx),%eax
    2d4c:	66 c1 f8 05          	sar    $0x5,%eax
    2d50:	26 8b 57 06          	mov    %es:0x6(%bx),%dx
    2d54:	83 e2 e0             	and    $0xffe0,%dx
    2d57:	03 c2                	add    %dx,%ax
    2d59:	8b d8                	mov    %ax,%bx
    2d5b:	8a 87 b3 69          	mov    0x69b3(%bx),%al
    2d5f:	b4 00                	mov    $0x0,%ah
    2d61:	5d                   	pop    %bp
    2d62:	c3                   	ret
    2d63:	55                   	push   %bp
    2d64:	8b                 	mov    %sp,%bp
