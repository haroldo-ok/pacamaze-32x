; score @ 0x2620 len 0x120
00002620 <.data+0x2620>:
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
    265c:	3d 18 00             	cmp    $0x18,%ax
    265f:	7d 37                	jge    0x2698
    2661:	8b 46 0e             	mov    0xe(%bp),%ax
    2664:	05 00 a0             	add    $0xa000,%ax
    2667:	8e c0                	mov    %ax,%es
    2669:	b4 01                	mov    $0x1,%ah
    266b:	8b 4e fe             	mov    -0x2(%bp),%cx
    266e:	83 e1 03             	and    $0x3,%cx
    2671:	d2 e4                	shl    %cl,%ah
    2673:	b0 02                	mov    $0x2,%al
    2675:	ba c4 03             	mov    $0x3c4,%dx
    2678:	ef                   	out    %ax,(%dx)
    2679:	8b 5e fe             	mov    -0x2(%bp),%bx
    267c:	c1 fb 02             	sar    $0x2,%bx
    267f:	8b 46 fc             	mov    -0x4(%bp),%ax
    2682:	8b d0                	mov    %ax,%dx
    2684:	c1 e0 06             	shl    $0x6,%ax
    2687:	c1 e2 04             	shl    $0x4,%dx
    268a:	03 d8                	add    %ax,%bx
    268c:	03 da                	add    %dx,%bx
    268e:	81 c3 48 0a          	add    $0xa48,%bx
    2692:	8a 46 0c             	mov    0xc(%bp),%al
    2695:	26 88 07             	mov    %al,%es:(%bx)
    2698:	c9                   	leave
    2699:	c3                   	ret
    269a:	55                   	push   %bp
    269b:	8b ec                	mov    %sp,%bp
    269d:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    26a2:	74 45                	je     0x26e9
    26a4:	c4 5e 04             	les    0x4(%bp),%bx
    26a7:	26 c7 07 d5 01       	movw   $0x1d5,%es:(%bx)
    26ac:	6a 00                	push   $0x0
    26ae:	6a 00                	push   $0x0
    26b0:	66 26 ff 77 14       	pushl  %es:0x14(%bx)
    26b5:	66 26 ff 77 10       	pushl  %es:0x10(%bx)
    26ba:	e8 63 ff             	call   0x2620
    26bd:	83 c4 0c             	add    $0xc,%sp
    26c0:	68 e8 03             	push   $0x3e8
    26c3:	6a 00                	push   $0x0
    26c5:	c4 5e 04             	les    0x4(%bp),%bx
    26c8:	66 26 ff 77 14       	pushl  %es:0x14(%bx)
    26cd:	66 26 ff 77 10       	pushl  %es:0x10(%bx)
    26d2:	e8 4b ff             	call   0x2620
    26d5:	83 c4 0c             	add    $0xc,%sp
    26d8:	f7 46 08 01 00       	testw  $0x1,0x8(%bp)
    26dd:	74 0a                	je     0x26e9
    26df:	66 ff 76 04          	pushl  0x4(%bp)
    26e3:	e8 e9 18             	call   0x3fcf
    26e6:	83 c4 04             	add    $0x4,%sp
    26e9:	5d                   	pop    %bp
    26ea:	c3                   	ret
    26eb:	55                   	push   %bp
    26ec:	8b ec                	mov    %sp,%bp
    26ee:	57                   	push   %di
    26ef:	8b 46 0e             	mov    0xe(%bp),%ax
    26f2:	05 00 a0             	add    $0xa000,%ax
    26f5:	8e c0                	mov    %ax,%es
    26f7:	8b 46 0a             	mov    0xa(%bp),%ax
    26fa:	8b d8                	mov    %ax,%bx
    26fc:	c1 e0 06             	shl    $0x6,%ax
    26ff:	c1 e3 04             	shl    $0x4,%bx
    2702:	03 c3                	add    %bx,%ax
    2704:	8b 7e 08             	mov    0x8(%bp),%di
    2707:	c1 ef 02             	shr    $0x2,%di
    270a:	03 f8                	add    %ax,%di
    270c:	8b 56 10             	mov    0x10(%bp),%dx
    270f:	bb 00 00             	mov    $0x0,%bx
    2712:	8b 4e 0c             	mov    0xc(%bp),%cx
    2715:	8b da                	mov    %dx,%bx
    2717:	c1 eb 0b             	shr    $0xb,%bx
    271a:	03 5e 14             	add    0x14(%bp),%bx
    271d:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
    2721:	3c 00                	cmp    $0x0,%al
    2723:	74 03                	je     0x2728
    2725:	26 88 05             	mov    %al,%es:(%di)
    2728:	83 c7 50             	add    $0x50,%di
    272b:	03 56 12             	add    0x12(%bp),%dx
    272e:	49                   	dec    %cx
    272f:	75 e4                	jne    0x2715
    2731:	5f                   	pop    %di
    2732:	5d                   	pop    %bp
    2733:	c3                   	ret
    2734:	55                   	push   %bp
    2735:	8b ec                	mov    %sp,%bp
    2737:	83 ec 18             	sub    $0x18,%sp
    273a:	ff 76 10             	push   0x10(%bp)
    273d:	e8 ca db             	call   0x30a
