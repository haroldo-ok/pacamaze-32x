; ammomove @ 0x22DF len 0x60
000022df <.data+0x22df>:
    22df:	55                   	push   %bp
    22e0:	8b ec                	mov    %sp,%bp
    22e2:	33 c0                	xor    %ax,%ax
    22e4:	5d                   	pop    %bp
    22e5:	c3                   	ret
    22e6:	55                   	push   %bp
    22e7:	8b ec                	mov    %sp,%bp
    22e9:	b0 61                	mov    $0x61,%al
    22eb:	5d                   	pop    %bp
    22ec:	c3                   	ret
    22ed:	55                   	push   %bp
    22ee:	8b ec                	mov    %sp,%bp
    22f0:	b0 65                	mov    $0x65,%al
    22f2:	5d                   	pop    %bp
    22f3:	c3                   	ret
    22f4:	55                   	push   %bp
    22f5:	8b ec                	mov    %sp,%bp
    22f7:	66 0f bf 46 08       	movswl 0x8(%bp),%eax
    22fc:	c4 5e 04             	les    0x4(%bp),%bx
    22ff:	66 26 89 47 02       	mov    %eax,%es:0x2(%bx)
    2304:	66 0f bf 46 0a       	movswl 0xa(%bp),%eax
    2309:	66 26 89 47 06       	mov    %eax,%es:0x6(%bx)
    230e:	26 c7 47 1e 01 00    	movw   $0x1,%es:0x1e(%bx)
    2314:	5d                   	pop    %bp
    2315:	c3                   	ret
    2316:	55                   	push   %bp
    2317:	8b ec                	mov    %sp,%bp
    2319:	b0 62                	mov    $0x62,%al
    231b:	5d                   	pop    %bp
    231c:	c3                   	ret
    231d:	55                   	push   %bp
    231e:	8b ec                	mov    %sp,%bp
    2320:	8b 5e 04             	mov    0x4(%bp),%bx
    2323:	ba d4 03             	mov    $0x3d4,%dx
    2326:	b0 0c                	mov    $0xc,%al
    2328:	8a e7                	mov    %bh,%ah
    232a:	ef                   	out    %ax,(%dx)
    232b:	fe c0                	inc    %al
    232d:	8a e3                	mov    %bl,%ah
    232f:	ef                   	out    %ax,(%dx)
    2330:	5d                   	pop    %bp
    2331:	c3                   	ret
    2332:	55                   	push   %bp
    2333:	8b ec                	mov    %sp,%bp
    2335:	b4 10                	mov    $0x10,%ah
    2337:	b0 10                	mov    $0x10,%al
    2339:	8b 5e 04             	mov    0x4(%bp),%bx
    233c:	8a 76 06             	mov    0x6(%bp),%dh
