; getters @ 0x2F09 len 0x30
00002f09 <.data+0x2f09>:
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
    2f38:	cd                 	int    $0x21
