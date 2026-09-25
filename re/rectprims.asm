; rectprims @ 0x253C len 0x120
0000253c <.data+0x253c>:
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
    2556:	ba c4 03             	mov    $0x3c4,%dx
    2559:	b0 02                	mov    $0x2,%al
    255b:	ee                   	out    %al,(%dx)
    255c:	8b 4e 06             	mov    0x6(%bp),%cx
    255f:	83 e1 03             	and    $0x3,%cx
    2562:	b7 0e                	mov    $0xe,%bh
    2564:	d2 e7                	shl    %cl,%bh
    2566:	f6 d7                	not    %bh
    2568:	80 e7 0f             	and    $0xf,%bh
    256b:	8b 4e 04             	mov    0x4(%bp),%cx
    256e:	83 e1 03             	and    $0x3,%cx
    2571:	b3 0f                	mov    $0xf,%bl
    2573:	d2 e3                	shl    %cl,%bl
    2575:	80 e3 0f             	and    $0xf,%bl
    2578:	8b 46 04             	mov    0x4(%bp),%ax
    257b:	c1 e8 02             	shr    $0x2,%ax
    257e:	8b 4e 06             	mov    0x6(%bp),%cx
    2581:	c1 e9 02             	shr    $0x2,%cx
    2584:	03 f8                	add    %ax,%di
    2586:	ba c5 03             	mov    $0x3c5,%dx
    2589:	3b c1                	cmp    %cx,%ax
    258b:	75 0f                	jne    0x259c
    258d:	22 df                	and    %bh,%bl
    258f:	8a c3                	mov    %bl,%al
    2591:	ee                   	out    %al,(%dx)
    2592:	8a 46 0a             	mov    0xa(%bp),%al
    2595:	26 88 05             	mov    %al,%es:(%di)
    2598:	47                   	inc    %di
    2599:	5f                   	pop    %di
    259a:	5d                   	pop    %bp
    259b:	c3                   	ret
    259c:	8a c3                	mov    %bl,%al
    259e:	ee                   	out    %al,(%dx)
    259f:	8a 46 0a             	mov    0xa(%bp),%al
    25a2:	26 88 05             	mov    %al,%es:(%di)
    25a5:	47                   	inc    %di
    25a6:	b0 0f                	mov    $0xf,%al
    25a8:	ee                   	out    %al,(%dx)
    25a9:	8b 46 04             	mov    0x4(%bp),%ax
    25ac:	c1 e8 02             	shr    $0x2,%ax
    25af:	40                   	inc    %ax
    25b0:	2b c8                	sub    %ax,%cx
    25b2:	8a 46 0a             	mov    0xa(%bp),%al
    25b5:	f3 aa                	rep stos %al,%es:(%di)
    25b7:	8a c7                	mov    %bh,%al
    25b9:	ee                   	out    %al,(%dx)
    25ba:	8a 46 0a             	mov    0xa(%bp),%al
    25bd:	26 88 05             	mov    %al,%es:(%di)
    25c0:	5f                   	pop    %di
    25c1:	5d                   	pop    %bp
    25c2:	c3                   	ret
    25c3:	55                   	push   %bp
    25c4:	8b ec                	mov    %sp,%bp
    25c6:	ff 76 0e             	push   0xe(%bp)
    25c9:	8a 46 0c             	mov    0xc(%bp),%al
    25cc:	50                   	push   %ax
    25cd:	ff 76 0a             	push   0xa(%bp)
    25d0:	ff 76 06             	push   0x6(%bp)
    25d3:	ff 76 04             	push   0x4(%bp)
    25d6:	e8 1e ff             	call   0x24f7
    25d9:	83 c4 0a             	add    $0xa,%sp
    25dc:	ff 76 0e             	push   0xe(%bp)
    25df:	8a 46 0c             	mov    0xc(%bp),%al
    25e2:	50                   	push   %ax
    25e3:	ff 76 0a             	push   0xa(%bp)
    25e6:	ff 76 06             	push   0x6(%bp)
    25e9:	ff 76 08             	push   0x8(%bp)
    25ec:	e8 08 ff             	call   0x24f7
    25ef:	83 c4 0a             	add    $0xa,%sp
    25f2:	ff 76 0e             	push   0xe(%bp)
    25f5:	8a 46 0c             	mov    0xc(%bp),%al
    25f8:	50                   	push   %ax
    25f9:	ff 76 06             	push   0x6(%bp)
    25fc:	ff 76 08             	push   0x8(%bp)
    25ff:	ff 76 04             	push   0x4(%bp)
    2602:	e8 37 ff             	call   0x253c
    2605:	83 c4 0a             	add    $0xa,%sp
    2608:	ff 76 0e             	push   0xe(%bp)
    260b:	8a 46 0c             	mov    0xc(%bp),%al
    260e:	50                   	push   %ax
    260f:	ff 76 0a             	push   0xa(%bp)
    2612:	ff 76 08             	push   0x8(%bp)
    2615:	ff 76 04             	push   0x4(%bp)
    2618:	e8 21 ff             	call   0x253c
    261b:	83 c4 0a             	add    $0xa,%sp
    261e:	5d                   	pop    %bp
    261f:	c3                   	ret
    2620:	55                   	push   %bp
    2621:	8b ec                	mov    %sp,%bp
    2623:	83 ec 04             	sub    $0x4,%sp
    2626:	66 8b 46 04          	mov    0x4(%bp),%eax
    262a:	66 f7 d8             	neg    %eax
    262d:	66 c1 f8 0d          	sar    $0xd,%eax
    2631:	89 46 fe             	mov    %ax,-0x2(%bp)
    2634:	66 8b 46 08          	mov    0x8(%bp),%eax
    2638:	66 f7 d8             	neg    %eax
    263b:	66 c1 f8 0d          	sar    $0xd,%eax
    263f:	89 46 fc             	mov    %ax,-0x4(%bp)
    2642:	ff 76 fe             	push   -0x2(%bp)
    2645:	e8 ac 08             	call   0x2ef4
    2648:	83 c4 02             	add    $0x2,%sp
    264b:	3d 18 00             	cmp    $0x18,%ax
    264e:	7c 03                	jl     0x2653
    2650:	eb 46                	jmp    0x2698
    2652:	90                   	nop
    2653:	ff 76 fc             	push   -0x4(%bp)
    2656:	e8 9b 08             	call   0x2ef4
    2659:	83 c4 02             	add    $0x2,%sp
