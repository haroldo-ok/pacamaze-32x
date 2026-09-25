; vtable2fn @ 0x284B len 0x180
0000284b <.data+0x284b>:
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
    2884:	66 b8 40 1f 00 00    	mov    $0x1f40,%eax
    288a:	66 99                	cltd
    288c:	66 26 f7 7f 18       	idivl  %es:0x18(%bx)
    2891:	66 50                	push   %eax
    2893:	b8 65 00             	mov    $0x65,%ax
    2896:	66 5a                	pop    %edx
    2898:	2b c2                	sub    %dx,%ax
    289a:	eb 03                	jmp    0x289f
    289c:	b8 01 00             	mov    $0x1,%ax
    289f:	89 46 f8             	mov    %ax,-0x8(%bp)
    28a2:	b8 64 00             	mov    $0x64,%ax
    28a5:	2b 46 f8             	sub    -0x8(%bp),%ax
    28a8:	89 46 f6             	mov    %ax,-0xa(%bp)
    28ab:	83 7e f6 00          	cmpw   $0x0,-0xa(%bp)
    28af:	74 12                	je     0x28c3
    28b1:	66 0f bf 5e f6       	movswl -0xa(%bp),%ebx
    28b6:	66 b8 00 00 01 00    	mov    $0x10000,%eax
    28bc:	66 99                	cltd
    28be:	66 f7 fb             	idiv   %ebx
    28c1:	eb 03                	jmp    0x28c6
    28c3:	b8 01 00             	mov    $0x1,%ax
    28c6:	89 46 f4             	mov    %ax,-0xc(%bp)
    28c9:	8b 46 f6             	mov    -0xa(%bp),%ax
    28cc:	d1 f8                	sar    $1,%ax
    28ce:	ba 65 00             	mov    $0x65,%dx
    28d1:	2b d0                	sub    %ax,%dx
    28d3:	89 56 f8             	mov    %dx,-0x8(%bp)
    28d6:	83 7e f8 01          	cmpw   $0x1,-0x8(%bp)
    28da:	7d 1a                	jge    0x28f6
    28dc:	ba 01 00             	mov    $0x1,%dx
    28df:	2b 56 f8             	sub    -0x8(%bp),%dx
    28e2:	8b 46 f4             	mov    -0xc(%bp),%ax
    28e5:	f7 ea                	imul   %dx
    28e7:	89 46 f2             	mov    %ax,-0xe(%bp)
    28ea:	c7 46 f8 01 00       	movw   $0x1,-0x8(%bp)
    28ef:	c7 46 f6 c7 00       	movw   $0xc7,-0xa(%bp)
    28f4:	eb 05                	jmp    0x28fb
    28f6:	c7 46 f2 00 00       	movw   $0x0,-0xe(%bp)
    28fb:	8b 46 f6             	mov    -0xa(%bp),%ax
    28fe:	d1 f8                	sar    $1,%ax
    2900:	8b 56 fa             	mov    -0x6(%bp),%dx
    2903:	2b d0                	sub    %ax,%dx
    2905:	c4 5e 04             	les    0x4(%bp),%bx
    2908:	26 89 57 0c          	mov    %dx,%es:0xc(%bx)
    290c:	26 8b 47 0c          	mov    %es:0xc(%bx),%ax
    2910:	03 46 f6             	add    -0xa(%bp),%ax
    2913:	26 89 47 0e          	mov    %ax,%es:0xe(%bx)
    2917:	26 8b 47 0a          	mov    %es:0xa(%bx),%ax
    291b:	c1 e0 0a             	shl    $0xa,%ax
    291e:	89 46 f0             	mov    %ax,-0x10(%bp)
    2921:	66 c7 46 ec 00 00 00 	movl   $0x0,-0x14(%bp)
    2928:	00 
    2929:	26 8b 47 0c          	mov    %es:0xc(%bx),%ax
    292d:	89 46 ea             	mov    %ax,-0x16(%bp)
    2930:	8b 46 08             	mov    0x8(%bp),%ax
    2933:	8b 56 ea             	mov    -0x16(%bp),%dx
    2936:	c1 e2 03             	shl    $0x3,%dx
    2939:	03 c2                	add    %dx,%ax
    293b:	89 46 fe             	mov    %ax,-0x2(%bp)
    293e:	eb 78                	jmp    0x29b8
    2940:	90                   	nop
    2941:	83 7e ea 00          	cmpw   $0x0,-0x16(%bp)
    2945:	7c 61                	jl     0x29a8
    2947:	81 7e ea 00 01       	cmpw   $0x100,-0x16(%bp)
    294c:	7d 5a                	jge    0x29a8
    294e:	8e 46 0a             	mov    0xa(%bp),%es
    2951:	8b 5e fe             	mov    -0x2(%bp),%bx
    2954:	66 26 0f bf 07       	movswl %es:(%bx),%eax
    2959:	c4 5e 04             	les    0x4(%bp),%bx
    295c:	66 26 3b 47 18       	cmp    %es:0x18(%bx),%eax
    2961:	7e 45                	jle    0x29a8
    2963:	8a 4e ea             	mov    -0x16(%bp),%cl
    2966:	80 e1 03             	and    $0x3,%cl
    2969:	b8 00 01             	mov    $0x100,%ax
    296c:	d3 e0                	shl    %cl,%ax
    296e:	05 02 00             	add    $0x2,%ax
    2971:	89 46 e8             	mov    %ax,-0x18(%bp)
    2974:	8b 46 e8             	mov    -0x18(%bp),%ax
    2977:	ba c4 03             	mov    $0x3c4,%dx
    297a:	ef                   	out    %ax,(%dx)
    297b:	66 8b 46 ec          	mov    -0x14(%bp),%eax
    297f:	66 c1 f8 06          	sar    $0x6,%eax
    2983:	25 e0 ff             	and    $0xffe0,%ax
    2986:	8b 56 f0             	mov    -0x10(%bp),%dx
    2989:	03 d0                	add    %ax,%dx
    298b:	52                   	push   %dx
    298c:	ff 76 f4             	push   -0xc(%bp)
    298f:	ff 76 f2             	push   -0xe(%bp)
    2992:	ff 76 0c             	push   0xc(%bp)
    2995:	ff 76 f6             	push   -0xa(%bp)
    2998:	ff 76 f8             	push   -0x8(%bp)
    299b:	ff 76 ea             	push   -0x16(%bp)
    299e:	66 ff 76 04          	pushl  0x4(%bp)
    29a2:	e8 46 fd             	call   0x26eb
    29a5:	83 c4 12             	add    $0x12,%sp
    29a8:	66 0f bf 46 f4       	movswl -0xc(%bp),%eax
    29ad:	66 01 46 ec          	add    %eax,-0x14(%bp)
    29b1:	83 46 fe 08          	addw   $0x8,-0x2(%bp)
    29b5:	ff 46 ea             	incw   -0x16(%bp)
    29b8:	c4 5e 04             	les    0x4(%bp),%bx
    29bb:	26 8b 47 0e          	mov    %es:0xe(%bx),%ax
    29bf:	3b 46 ea             	cmp    -0x16(%bp),%ax
    29c2:	7e 03                	jle    0x29c7
    29c4:	e9 7a ff             	jmp    0x2941
    29c7:	c9                   	leave
    29c8:	c3                   	ret
    29c9:	55                   	push   %bp
    29ca:	8b                 	mov    %sp,%bp
