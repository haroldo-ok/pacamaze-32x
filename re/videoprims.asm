; videoprims @ 0x2476 len 0xE0
00002476 <.data+0x2476>:
    2476:	55                   	push   %bp
    2477:	8b ec                	mov    %sp,%bp
    2479:	83 ec 02             	sub    $0x2,%sp
    247c:	8a 46 04             	mov    0x4(%bp),%al
    247f:	b4 00                	mov    $0x0,%ah
    2481:	ba 80 3e             	mov    $0x3e80,%dx
    2484:	f7 ea                	imul   %dx
    2486:	89 46 fe             	mov    %ax,-0x2(%bp)
    2489:	50                   	push   %ax
    248a:	e8 90 fe             	call   0x231d
    248d:	83 c4 02             	add    $0x2,%sp
    2490:	c9                   	leave
    2491:	c3                   	ret
    2492:	55                   	push   %bp
    2493:	8b ec                	mov    %sp,%bp
    2495:	57                   	push   %di
    2496:	b8 02 0f             	mov    $0xf02,%ax
    2499:	ba c4 03             	mov    $0x3c4,%dx
    249c:	ef                   	out    %ax,(%dx)
    249d:	8b 46 06             	mov    0x6(%bp),%ax
    24a0:	05 00 a0             	add    $0xa000,%ax
    24a3:	8e c0                	mov    %ax,%es
    24a5:	8a 46 04             	mov    0x4(%bp),%al
    24a8:	8a e0                	mov    %al,%ah
    24aa:	b9 40 1f             	mov    $0x1f40,%cx
    24ad:	bf 00 00             	mov    $0x0,%di
    24b0:	f3 ab                	rep stos %ax,%es:(%di)
    24b2:	5f                   	pop    %di
    24b3:	5d                   	pop    %bp
    24b4:	c3                   	ret
    24b5:	ba da 03             	mov    $0x3da,%dx
    24b8:	ec                   	in     (%dx),%al
    24b9:	b4 00                	mov    $0x0,%ah
    24bb:	25 08 00             	and    $0x8,%ax
    24be:	c3                   	ret
    24bf:	55                   	push   %bp
    24c0:	8b ec                	mov    %sp,%bp
    24c2:	8b 46 0a             	mov    0xa(%bp),%ax
    24c5:	05 00 a0             	add    $0xa000,%ax
    24c8:	8e c0                	mov    %ax,%es
    24ca:	b4 01                	mov    $0x1,%ah
    24cc:	8b 4e 04             	mov    0x4(%bp),%cx
    24cf:	83 e1 03             	and    $0x3,%cx
    24d2:	d2 e4                	shl    %cl,%ah
    24d4:	b0 02                	mov    $0x2,%al
    24d6:	ba c4 03             	mov    $0x3c4,%dx
    24d9:	ef                   	out    %ax,(%dx)
    24da:	8b 4e 04             	mov    0x4(%bp),%cx
    24dd:	c1 e9 02             	shr    $0x2,%cx
    24e0:	8b 46 06             	mov    0x6(%bp),%ax
    24e3:	8b d8                	mov    %ax,%bx
    24e5:	c1 e0 06             	shl    $0x6,%ax
    24e8:	c1 e3 04             	shl    $0x4,%bx
    24eb:	03 d8                	add    %ax,%bx
    24ed:	03 d9                	add    %cx,%bx
    24ef:	8a 46 08             	mov    0x8(%bp),%al
    24f2:	26 88 07             	mov    %al,%es:(%bx)
    24f5:	5d                   	pop    %bp
    24f6:	c3                   	ret
    24f7:	55                   	push   %bp
    24f8:	8b ec                	mov    %sp,%bp
    24fa:	8b 46 0c             	mov    0xc(%bp),%ax
    24fd:	05 00 a0             	add    $0xa000,%ax
    2500:	8e c0                	mov    %ax,%es
    2502:	b4 01                	mov    $0x1,%ah
    2504:	8b 4e 04             	mov    0x4(%bp),%cx
    2507:	83 e1 03             	and    $0x3,%cx
    250a:	d2 e4                	shl    %cl,%ah
    250c:	b0 02                	mov    $0x2,%al
    250e:	ba c4 03             	mov    $0x3c4,%dx
    2511:	ef                   	out    %ax,(%dx)
    2512:	8b 4e 04             	mov    0x4(%bp),%cx
    2515:	c1 e9 02             	shr    $0x2,%cx
    2518:	8b 46 06             	mov    0x6(%bp),%ax
    251b:	8b d8                	mov    %ax,%bx
    251d:	c1 e0 06             	shl    $0x6,%ax
    2520:	c1 e3 04             	shl    $0x4,%bx
    2523:	03 d8                	add    %ax,%bx
    2525:	03 d9                	add    %cx,%bx
    2527:	8a 46 0a             	mov    0xa(%bp),%al
    252a:	8b 4e 08             	mov    0x8(%bp),%cx
    252d:	2b 4e 06             	sub    0x6(%bp),%cx
    2530:	41                   	inc    %cx
    2531:	26 88 07             	mov    %al,%es:(%bx)
    2534:	83 c3 50             	add    $0x50,%bx
    2537:	49                   	dec    %cx
    2538:	75 f7                	jne    0x2531
    253a:	5d                   	pop    %bp
    253b:	c3                   	ret
    253c:	55                   	push   %bp
    253d:	8b ec                	mov    %sp,%bp
    253f:	57                   	push   %di
    2540:	8b 46 0c             	mov    0xc(%bp),%ax
    2543:	05 00 a0             	add    $0xa000,%ax
    2546:	8e c0                	mov    %ax,%es
    2548:	8b 7e 08             	mov    0x8(%bp),%di
    254b:	c1 e7 06             	shl    $0x6,%di
    254e:	8b 46 08             	mov    0x8(%bp),%ax
    2551:	c1 e0 04             	shl    $0x4,%ax
    2554:	03 f8                	add    %ax,%di
