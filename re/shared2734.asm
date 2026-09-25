; shared2734 @ 0x2734 len 0x150
00002734 <.data+0x2734>:
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
    276a:	e8 9d db             	call   0x30a
    276d:	83 c4 02             	add    $0x2,%sp
    2770:	66 0f bf c0          	movswl %ax,%eax
    2774:	66 50                	push   %eax
    2776:	8b 46 10             	mov    0x10(%bp),%ax
    2779:	05 00 ff             	add    $0xff00,%ax
    277c:	50                   	push   %ax
    277d:	e8 9c db             	call   0x31c
    2780:	83 c4 02             	add    $0x2,%sp
    2783:	66 0f bf c0          	movswl %ax,%eax
    2787:	66 50                	push   %eax
    2789:	16                   	push   %ss
    278a:	8d 46 f0             	lea    -0x10(%bp),%ax
    278d:	50                   	push   %ax
    278e:	e8 28 db             	call   0x2b9
    2791:	83 c4 0c             	add    $0xc,%sp
    2794:	c4 5e 04             	les    0x4(%bp),%bx
    2797:	66 26 8b 47 06       	mov    %es:0x6(%bx),%eax
    279c:	66 2b 46 0c          	sub    0xc(%bp),%eax
    27a0:	66 89 46 ec          	mov    %eax,-0x14(%bp)
    27a4:	66 26 8b 47 02       	mov    %es:0x2(%bx),%eax
    27a9:	66 2b 46 08          	sub    0x8(%bp),%eax
    27ad:	66 89 46 e8          	mov    %eax,-0x18(%bp)
    27b1:	83 7e 12 00          	cmpw   $0x0,0x12(%bp)
    27b5:	75 05                	jne    0x27bc
    27b7:	b8 e8 03             	mov    $0x3e8,%ax
    27ba:	eb 02                	jmp    0x27be
    27bc:	33 c0                	xor    %ax,%ax
    27be:	50                   	push   %ax
    27bf:	6a 00                	push   $0x0
    27c1:	c4 5e 04             	les    0x4(%bp),%bx
    27c4:	66 26 ff 77 14       	pushl  %es:0x14(%bx)
    27c9:	66 26 ff 77 10       	pushl  %es:0x10(%bx)
    27ce:	e8 4f fe             	call   0x2620
    27d1:	83 c4 0c             	add    $0xc,%sp
    27d4:	66 8b 46 f8          	mov    -0x8(%bp),%eax
    27d8:	66 0f af 46 e8       	imul   -0x18(%bp),%eax
    27dd:	66 8b 56 fc          	mov    -0x4(%bp),%edx
    27e1:	66 0f af 56 ec       	imul   -0x14(%bp),%edx
    27e6:	66 03 c2             	add    %edx,%eax
    27e9:	c4 5e 04             	les    0x4(%bp),%bx
    27ec:	66 26 89 47 14       	mov    %eax,%es:0x14(%bx)
    27f1:	66 8b 46 f0          	mov    -0x10(%bp),%eax
    27f5:	66 0f af 46 e8       	imul   -0x18(%bp),%eax
    27fa:	66 8b 56 f4          	mov    -0xc(%bp),%edx
    27fe:	66 0f af 56 ec       	imul   -0x14(%bp),%edx
    2803:	66 03 c2             	add    %edx,%eax
    2806:	66 26 89 47 10       	mov    %eax,%es:0x10(%bx)
    280b:	ff 76 12             	push   0x12(%bp)
    280e:	26 8a 47 0a          	mov    %es:0xa(%bx),%al
    2812:	c0 e0 05             	shl    $0x5,%al
    2815:	04 94                	add    $0x94,%al
    2817:	50                   	push   %ax
    2818:	66 26 ff 77 14       	pushl  %es:0x14(%bx)
    281d:	66 26 ff 77 10       	pushl  %es:0x10(%bx)
    2822:	e8 fb fd             	call   0x2620
    2825:	83 c4 0c             	add    $0xc,%sp
    2828:	c4 5e 04             	les    0x4(%bp),%bx
    282b:	66 26 83 7f 14 00    	cmpl   $0x0,%es:0x14(%bx)
    2831:	7e 14                	jle    0x2847
    2833:	66 26 8b 47 14       	mov    %es:0x14(%bx),%eax
    2838:	66 c1 f8 06          	sar    $0x6,%eax
    283c:	66 26 89 47 18       	mov    %eax,%es:0x18(%bx)
    2841:	26 8b 47 18          	mov    %es:0x18(%bx),%ax
    2845:	c9                   	leave
    2846:	c3                   	ret
    2847:	33 c0                	xor    %ax,%ax
    2849:	c9                   	leave
    284a:	c3                   	ret
    284b:	55                   	push   %bp
    284c:	8b ec                	mov    %sp,%bp
    284e:	83 ec 18             	sub    $0x18,%sp
    2851:	c4 5e 04             	les    0x4(%bp),%bx
    2854:	66 26 83 7f 14 00    	cmpl   $0x0,%es:0x14(%bx)
    285a:	7f 03                	jg     0x285f
    285c:	e9 68 01             	jmp    0x29c7
    285f:	66 26 8b 47 10       	mov    %es:0x10(%bx),%eax
    2864:	66 c1 e0 07          	shl    $0x7,%eax
    2868:	66 99                	cltd
    286a:	66 26 f7 7f 14       	idivl  %es:0x14(%bx)
    286f:	66 ba 80 00 00 00    	mov    $0x80,%edx
    2875:	66 2b d0             	sub    %eax,%edx
    2878:	66 89 56 fa          	mov    %edx,-0x6(%bp)
    287c:	66 26 83 7f 18 00    	cmpl   $0x0,%es:0x18(%bx)
    2882:	74 18                	je     0x289c
