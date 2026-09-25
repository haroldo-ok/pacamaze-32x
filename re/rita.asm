; rita @ 0x7DC len 0x200
000007dc <.data+0x7dc>:
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
     8d9:	50                   	push   %ax
     8da:	e8 96 15             	call   0x1e73
     8dd:	83 c4 08             	add    $0x8,%sp
     8e0:	c7 46 f6 00 00       	movw   $0x0,-0xa(%bp)
     8e5:	16                   	push   %ss
     8e6:	8d 46 f8             	lea    -0x8(%bp),%ax
     8e9:	50                   	push   %ax
     8ea:	e8 bf 15             	call   0x1eac
     8ed:	83 c4 04             	add    $0x4,%sp
     8f0:	89 56 f4             	mov    %dx,-0xc(%bp)
     8f3:	89 46 f2             	mov    %ax,-0xe(%bp)
     8f6:	ff 76 0e             	push   0xe(%bp)
     8f9:	ff 76 0c             	push   0xc(%bp)
     8fc:	8d 46 04             	lea    0x4(%bp),%ax
     8ff:	8c d2                	mov    %ss,%dx
     901:	b9 08 00             	mov    $0x8,%cx
     904:	e8 f7 38             	call   0x41fe
     907:	c4 5e f2             	les    -0xe(%bp),%bx
     90a:	66 26 ff 37          	pushl  %es:(%bx)
     90e:	26 c4 1f             	les    %es:(%bx),%bx
     911:	26 8b 1f             	mov    %es:(%bx),%bx
     914:	ff 57 08             	call   *0x8(%bx)
     917:	83 c4 10             	add    $0x10,%sp
     91a:	0b c0                	or     %ax,%ax
     91c:	74 2c                	je     0x94a
     91e:	16                   	push   %ss
     91f:	8d 46 f8             	lea    -0x8(%bp),%ax
     922:	50                   	push   %ax
     923:	e8 86 15             	call   0x1eac
     926:	83 c4 04             	add    $0x4,%sp
     929:	8b d8                	mov    %ax,%bx
     92b:	8e c2                	mov    %dx,%es
     92d:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
     931:	26 8b 17             	mov    %es:(%bx),%dx
     934:	8b 5e f6             	mov    -0xa(%bp),%bx
     937:	c1 e3 02             	shl    $0x2,%bx
     93a:	8d 8e aa f7          	lea    -0x856(%bp),%cx
     93e:	03 d9                	add    %cx,%bx
     940:	36 89 47 02          	mov    %ax,%ss:0x2(%bx)
     944:	36 89 17             	mov    %dx,%ss:(%bx)
     947:	ff 46 f6             	incw   -0xa(%bp)
     94a:	16                   	push   %ss
     94b:	8d 46 f8             	lea    -0x8(%bp),%ax
     94e:	50                   	push   %ax
     94f:	e8 6d 15             	call   0x1ebf
     952:	83 c4 04             	add    $0x4,%sp
     955:	0b c0                	or     %ax,%ax
     957:	75 8c                	jne    0x8e5
     959:	ff 76 f6             	push   -0xa(%bp)
     95c:	16                   	push   %ss
     95d:	8d 86 aa f7          	lea    -0x856(%bp),%ax
     961:	50                   	push   %ax
     962:	e8 1a 25             	call   0x2e7f
     965:	83 c4 06             	add    $0x6,%sp
     968:	c7 46 f0 00 00       	movw   $0x0,-0x10(%bp)
     96d:	8d 86 aa f7          	lea    -0x856(%bp),%ax
     971:	89 46 ec             	mov    %ax,-0x14(%bp)
     974:	8b 46 f0             	mov    -0x10(%bp),%ax
     977:	3b 46 f6             	cmp    -0xa(%bp),%ax
     97a:	7d 2b                	jge    0x9a7
     97c:	ff 76 0e             	push   0xe(%bp)
     97f:	16                   	push   %ss
     980:	8d 86 d2 f7          	lea    -0x82e(%bp),%ax
     984:	50                   	push   %ax
     985:	8b 5e ec             	mov    -0x14(%bp),%bx
     988:	66 36 ff 37          	pushl  %ss:(%bx)
     98c:	36 c4 1f             	les    %ss:(%bx),%bx
     98f:	26 8b 1f             	mov    %es:(%bx),%bx
     992:	ff 57 02             	call   *0x2(%bx)
     995:	83 c4 0a             	add    $0xa,%sp
     998:	83 46 ec 04          	addw   $0x4,-0x14(%bp)
     99c:	ff 46 f0             	incw   -0x10(%bp)
     99f:	8b 46 f0             	mov    -0x10(%bp),%ax
     9a2:	3b 46 f6             	cmp    -0xa(%bp),%ax
     9a5:	7c d5                	jl     0x97c
     9a7:	c9                   	leave
     9a8:	c3                   	ret
     9a9:	50                   	push   %ax
     9aa:	53                   	push   %bx
     9ab:	51                   	push   %cx
     9ac:	52                   	push   %dx
     9ad:	06                   	push   %es
     9ae:	1e                   	push   %ds
     9af:	56                   	push   %si
     9b0:	57                   	push   %di
     9b1:	55                   	push   %bp
     9b2:	bd ea 05             	mov    $0x5ea,%bp
     9b5:	8e dd                	mov    %bp,%ds
     9b7:	b4 0c                	mov    $0xc,%ah
     9b9:	b0 0b                	mov    $0xb,%al
     9bb:	cd 21                	int    $0x21
     9bd:	e4 60                	in     $0x60,%al
     9bf:	a2 ae 00             	mov    %al,0xae
     9c2:	a0 ae 00             	mov    0xae,%al
     9c5:	b4 00                	mov    $0x0,%ah
     9c7:	3d b9 00             	cmp    $0xb9,%ax
     9ca:	74 71                	je     0xa3d
     9cc:	7f 1f                	jg     0x9ed
     9ce:	3d 4b 00             	cmp    $0x4b,%ax
     9d1:	74 39                	je     0xa0c
     9d3:	7f 0c                	jg     0x9e1
     9d5:	3d 39 00             	cmp    $0x39,%ax
     9d8:	74 5c                	je     0xa36
     9da:	3d 48              	cmp    $0x48,%ax
