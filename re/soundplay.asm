; soundplay @ 0x1F75 len 0x60
00001f75 <.data+0x1f75>:
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
    1fc1:	8b 46 04             	mov    0x4(%bp),%ax
    1fc4:	5d                   	pop    %bp
    1fc5:	c3                   	ret
    1fc6:	55                   	push   %bp
    1fc7:	8b ec                	mov    %sp,%bp
    1fc9:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    1fce:	75 12                	jne    0x1fe2
    1fd0:	6a 0a                	push   $0xa
    1fd2:	e8 90 23             	call   0x4365
