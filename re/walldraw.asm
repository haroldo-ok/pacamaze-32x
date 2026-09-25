; walldraw @ 0x6D9 len 0x200
000006d9 <.data+0x6d9>:
     6d9:	55                   	push   %bp
     6da:	8b ec                	mov    %sp,%bp
     6dc:	83 ec 16             	sub    $0x16,%sp
     6df:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     6e4:	b8 00 01             	mov    $0x100,%ax
     6e7:	8a 4e fe             	mov    -0x2(%bp),%cl
     6ea:	d3 e0                	shl    %cl,%ax
     6ec:	05 02 00             	add    $0x2,%ax
     6ef:	ba c4 03             	mov    $0x3c4,%dx
     6f2:	ef                   	out    %ax,(%dx)
     6f3:	8b 46 fe             	mov    -0x2(%bp),%ax
     6f6:	89 46 fa             	mov    %ax,-0x6(%bp)
     6f9:	8b 46 04             	mov    0x4(%bp),%ax
     6fc:	8b 56 fe             	mov    -0x2(%bp),%dx
     6ff:	c1 e2 03             	shl    $0x3,%dx
     702:	03 c2                	add    %dx,%ax
     704:	89 46 fc             	mov    %ax,-0x4(%bp)
     707:	e9 ba 00             	jmp    0x7c4
     70a:	8e 46 06             	mov    0x6(%bp),%es
     70d:	8b 5e fc             	mov    -0x4(%bp),%bx
     710:	26 8b 07             	mov    %es:(%bx),%ax
     713:	89 46 f8             	mov    %ax,-0x8(%bp)
     716:	66 26 8b 47 04       	mov    %es:0x4(%bx),%eax
     71b:	66 89 46 f4          	mov    %eax,-0xc(%bp)
     71f:	b8 40 1f             	mov    $0x1f40,%ax
     722:	99                   	cwtd
     723:	f7 7e f8             	idivw  -0x8(%bp)
     726:	ba 65 00             	mov    $0x65,%dx
     729:	2b d0                	sub    %ax,%dx
     72b:	89 56 f2             	mov    %dx,-0xe(%bp)
     72e:	b8 64 00             	mov    $0x64,%ax
     731:	2b 46 f2             	sub    -0xe(%bp),%ax
     734:	d1 e0                	shl    $1,%ax
     736:	89 46 f0             	mov    %ax,-0x10(%bp)
     739:	66 0f bf 5e f0       	movswl -0x10(%bp),%ebx
     73e:	66 b8 00 00 01 00    	mov    $0x10000,%eax
     744:	66 99                	cltd
     746:	66 f7 fb             	idiv   %ebx
     749:	89 46 ee             	mov    %ax,-0x12(%bp)
     74c:	83 7e f2 01          	cmpw   $0x1,-0xe(%bp)
     750:	7d 17                	jge    0x769
     752:	ba 01 00             	mov    $0x1,%dx
     755:	2b 56 f2             	sub    -0xe(%bp),%dx
     758:	f7 ea                	imul   %dx
     75a:	89 46 ec             	mov    %ax,-0x14(%bp)
     75d:	c7 46 f2 01 00       	movw   $0x1,-0xe(%bp)
     762:	c7 46 f0 c7 00       	movw   $0xc7,-0x10(%bp)
     767:	eb 05                	jmp    0x76e
     769:	c7 46 ec 00 00       	movw   $0x0,-0x14(%bp)
     76e:	8b 46 f4             	mov    -0xc(%bp),%ax
     771:	89 46 ea             	mov    %ax,-0x16(%bp)
     774:	81 7e f8 80 06       	cmpw   $0x680,-0x8(%bp)
     779:	7e 05                	jle    0x780
     77b:	b8 10 00             	mov    $0x10,%ax
     77e:	eb 09                	jmp    0x789
     780:	8b 46 f8             	mov    -0x8(%bp),%ax
     783:	c1 f8 07             	sar    $0x7,%ax
     786:	05 03 00             	add    $0x3,%ax
     789:	89 46 f8             	mov    %ax,-0x8(%bp)
     78c:	8a 46 f8             	mov    -0x8(%bp),%al
     78f:	50                   	push   %ax
     790:	8e 46 06             	mov    0x6(%bp),%es
     793:	8b 5e fc             	mov    -0x4(%bp),%bx
     796:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
     79a:	48                   	dec    %ax
     79b:	c1 e0 0a             	shl    $0xa,%ax
     79e:	8b 56 ea             	mov    -0x16(%bp),%dx
     7a1:	03 d0                	add    %ax,%dx
     7a3:	52                   	push   %dx
     7a4:	ff 76 ee             	push   -0x12(%bp)
     7a7:	ff 76 ec             	push   -0x14(%bp)
     7aa:	ff 76 08             	push   0x8(%bp)
     7ad:	ff 76 f0             	push   -0x10(%bp)
     7b0:	ff 76 f2             	push   -0xe(%bp)
     7b3:	ff 76 fa             	push   -0x6(%bp)
     7b6:	e8 d8 fe             	call   0x691
     7b9:	83 c4 10             	add    $0x10,%sp
     7bc:	83 46 fc 20          	addw   $0x20,-0x4(%bp)
     7c0:	83 46 fa 04          	addw   $0x4,-0x6(%bp)
     7c4:	81 7e fa 00 01       	cmpw   $0x100,-0x6(%bp)
     7c9:	7d 03                	jge    0x7ce
     7cb:	e9 3c ff             	jmp    0x70a
     7ce:	ff 46 fe             	incw   -0x2(%bp)
     7d1:	83 7e fe 04          	cmpw   $0x4,-0x2(%bp)
     7d5:	7d 03                	jge    0x7da
     7d7:	e9 0a ff             	jmp    0x6e4
     7da:	c9                   	leave
     7db:	c3                   	ret
     7dc:	55                   	push   %bp
     7dd:	8b ec                	mov    %sp,%bp
     7df:	81 ec 56 08          	sub    $0x856,%sp
     7e3:	83 3e aa 00 00       	cmpw   $0x0,0xaa
     7e8:	75 03                	jne    0x7ed
     7ea:	e9 c4 00             	jmp    0x8b1
     7ed:	66 8b 46 04          	mov    0x4(%bp),%eax
     7f1:	66 c1 e0 10          	shl    $0x10,%eax
     7f5:	66 89 46 e8          	mov    %eax,-0x18(%bp)
     7f9:	66 8b 46 08          	mov    0x8(%bp),%eax
     7fd:	66 c1 e0 10          	shl    $0x10,%eax
     801:	66 89 46 e4          	mov    %eax,-0x1c(%bp)
     805:	8b 46 0c             	mov    0xc(%bp),%ax
     808:	05 80 00             	add    $0x80,%ax
     80b:	50                   	push   %ax
     80c:	e8 fb fa             	call   0x30a
     80f:	83 c4 02             	add    $0x2,%sp
     812:	66 0f bf c0          	movswl %ax,%eax
     816:	66 69 c0 6a 01 00 00 	imul   $0x16a,%eax,%eax
     81d:	66 89 46 e0          	mov    %eax,-0x20(%bp)
     821:	8b 46 0c             	mov    0xc(%bp),%ax
     824:	05 80 ff             	add    $0xff80,%ax
     827:	50                   	push   %ax
     828:	e8 df fa             	call   0x30a
     82b:	83 c4 02             	add    $0x2,%sp
     82e:	66 0f bf c0          	movswl %ax,%eax
     832:	66 69 c0 6a 01 00 00 	imul   $0x16a,%eax,%eax
     839:	66 89 46 dc          	mov    %eax,-0x24(%bp)
     83d:	66 f7 d8             	neg    %eax
     840:	66 2b 46 e0          	sub    -0x20(%bp),%eax
     844:	66 c1 f8 08          	sar    $0x8,%eax
     848:	66 89 46 d8          	mov    %eax,-0x28(%bp)
     84c:	66 8b 46 e0          	mov    -0x20(%bp),%eax
     850:	66 2b 46 dc          	sub    -0x24(%bp),%eax
     854:	66 c1 f8 08          	sar    $0x8,%eax
     858:	66 89 46 d4          	mov    %eax,-0x2c(%bp)
     85c:	c7 46 d2 00 00       	movw   $0x0,-0x2e(%bp)
     861:	8d 86 d2 f7          	lea    -0x82e(%bp),%ax
     865:	89 46 ee             	mov    %ax,-0x12(%bp)
     868:	66 ff 76 dc          	pushl  -0x24(%bp)
     86c:	66 ff 76 e0          	pushl  -0x20(%bp)
     870:	66 ff 76 e4          	pushl  -0x1c(%bp)
     874:	66 ff 76 e8          	pushl  -0x18(%bp)
     878:	16                   	push   %ss
     879:	ff 76 ee             	push   -0x12(%bp)
     87c:	e8 41 34             	call   0x3cc0
     87f:	83 c4 14             	add    $0x14,%sp
     882:	66 8b 46 d8          	mov    -0x28(%bp),%eax
     886:	66 01 46 e0          	add    %eax,-0x20(%bp)
     88a:	66 8b 46 d4          	mov    -0x2c(%bp),%eax
     88e:	66 01 46 dc          	add    %eax,-0x24(%bp)
     892:	83 46 ee 08          	addw   $0x8,-0x12(%bp)
     896:	ff 46 d2             	incw   -0x2e(%bp)
     899:	81 7e d2 00 01       	cmpw   $0x100,-0x2e(%bp)
     89e:	7c c8                	jl     0x868
     8a0:	ff 76 0e             	push   0xe(%bp)
     8a3:	16                   	push   %ss
     8a4:	8d 86 d2 f7          	lea    -0x82e(%bp),%ax
     8a8:	50                   	push   %ax
     8a9:	e8 2d fe             	call   0x6d9
     8ac:	83 c4 06             	add    $0x6,%sp
     8af:	eb 20                	jmp    0x8d1
     8b1:	c7 46 ea 00 00       	movw   $0x0,-0x16(%bp)
     8b6:	8b 5e ea             	mov    -0x16(%bp),%bx
     8b9:	ff 46 ea             	incw   -0x16(%bp)
     8bc:	c1 e3 03             	shl    $0x3,%bx
     8bf:	8d 86 d2 f7          	lea    -0x82e(%bp),%ax
     8c3:	03 d8                	add    %ax,%bx
     8c5:	36 c7 07 30 75       	movw   $0x7530,%ss:(%bx)
     8ca:	81 7e ea 00 01       	cmpw   $0x100,-0x16(%bp)
     8cf:	7c e5                	jl     0x8b6
     8d1:	66 ff 76 10          	pushl  0x10(%bp)
     8d5:	16                   	push   %ss
     8d6:	8d 46 f8             	lea    -0x8(%bp),%ax
