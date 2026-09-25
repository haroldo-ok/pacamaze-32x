; vline @ 0x24F7 len 0x40
000024f7 <.data+0x24f7>:
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
