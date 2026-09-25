; sprcol @ 0x26EB len 0x80
000026eb <.data+0x26eb>:
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
    2740:	83 c4 02             	add    $0x2,%sp
    2743:	66 0f bf c0          	movswl %ax,%eax
    2747:	66 50                	push   %eax
    2749:	ff 76 10             	push   0x10(%bp)
    274c:	e8 cd db             	call   0x31c
    274f:	83 c4 02             	add    $0x2,%sp
    2752:	66 0f bf c0          	movswl %ax,%eax
    2756:	66 50                	push   %eax
    2758:	16                   	push   %ss
    2759:	8d 46 f8             	lea    -0x8(%bp),%ax
    275c:	50                   	push   %ax
    275d:	e8 59 db             	call   0x2b9
    2760:	83 c4 0c             	add    $0xc,%sp
    2763:	8b 46 10             	mov    0x10(%bp),%ax
    2766:	05 00 ff             	add    $0xff00,%ax
    2769:	50                   	push   %ax
    276a:	e8               	call   0x30a
