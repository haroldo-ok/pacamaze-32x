; radarfn @ 0x1F31 len 0x80
00001f31 <.data+0x1f31>:
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
    1fb0:	74                 	je     0x1fbe
