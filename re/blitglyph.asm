; blitglyph @ 0x2F59 len 0x80
00002f59 <.data+0x2f59>:
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
    2f7e:	8e c0                	mov    %ax,%es
    2f80:	c5 76 fc             	lds    -0x4(%bp),%si
    2f83:	8b 46 06             	mov    0x6(%bp),%ax
    2f86:	8b d8                	mov    %ax,%bx
    2f88:	c1 e0 06             	shl    $0x6,%ax
    2f8b:	c1 e3 04             	shl    $0x4,%bx
    2f8e:	03 d8                	add    %ax,%bx
    2f90:	8b fb                	mov    %bx,%di
    2f92:	83 46 04 02          	addw   $0x2,0x4(%bp)
    2f96:	b4 01                	mov    $0x1,%ah
    2f98:	8b 4e 04             	mov    0x4(%bp),%cx
    2f9b:	80 e1 03             	and    $0x3,%cl
    2f9e:	d2 e4                	shl    %cl,%ah
    2fa0:	b0 02                	mov    $0x2,%al
    2fa2:	ba c4 03             	mov    $0x3c4,%dx
    2fa5:	ef                   	out    %ax,(%dx)
    2fa6:	8b 46 04             	mov    0x4(%bp),%ax
    2fa9:	c1 e8 02             	shr    $0x2,%ax
    2fac:	8b df                	mov    %di,%bx
    2fae:	03 d8                	add    %ax,%bx
    2fb0:	b9 0c 00             	mov    $0xc,%cx
    2fb3:	8a 04                	mov    (%si),%al
    2fb5:	8a 64 04             	mov    0x4(%si),%ah
    2fb8:	26 89 07             	mov    %ax,%es:(%bx)
    2fbb:	83 c6 08             	add    $0x8,%si
    2fbe:	83 c3 50             	add    $0x50,%bx
    2fc1:	49                   	dec    %cx
    2fc2:	75 ef                	jne    0x2fb3
    2fc4:	83 ee 5f             	sub    $0x5f,%si
    2fc7:	ff 46 04             	incw   0x4(%bp)
    2fca:	ff 4e fa             	decw   -0x6(%bp)
    2fcd:	75 c7                	jne    0x2f96
    2fcf:	1f                   	pop    %ds
    2fd0:	5f                   	pop    %di
    2fd1:	5e                   	pop    %si
    2fd2:	c9                   	leave
    2fd3:	c3                   	ret
    2fd4:	55                   	push   %bp
    2fd5:	8b ec                	mov    %sp,%bp
    2fd7:	80 7e            	cmpb   $0x2f,0x8(%bp)
