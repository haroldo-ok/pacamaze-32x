; rand @ 0x1F55 len 0x40
00001f55 <.data+0x1f55>:
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
