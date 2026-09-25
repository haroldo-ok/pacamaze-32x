; ammo_ctor @ 0x2062 len 0x100
00002062 <.data+0x2062>:
    2062:	55                   	push   %bp
    2063:	8b ec                	mov    %sp,%bp
    2065:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    206a:	75 12                	jne    0x207e
    206c:	6a 1c                	push   $0x1c
    206e:	e8 f4 22             	call   0x4365
    2071:	83 c4 02             	add    $0x2,%sp
    2074:	89 56 06             	mov    %dx,0x6(%bp)
    2077:	89 46 04             	mov    %ax,0x4(%bp)
    207a:	0b c2                	or     %dx,%ax
    207c:	74 20                	je     0x209e
    207e:	8d 46 0a             	lea    0xa(%bp),%ax
    2081:	8c d2                	mov    %ss,%dx
    2083:	b9 08 00             	mov    $0x8,%cx
    2086:	e8 75 21             	call   0x41fe
    2089:	ff 76 08             	push   0x8(%bp)
    208c:	66 ff 76 04          	pushl  0x4(%bp)
    2090:	e8 30 00             	call   0x20c3
    2093:	83 c4 0e             	add    $0xe,%sp
    2096:	c4 5e 04             	les    0x4(%bp),%bx
    2099:	26 c7 07 e1 01       	movw   $0x1e1,%es:(%bx)
    209e:	8b 56 06             	mov    0x6(%bp),%dx
    20a1:	8b 46 04             	mov    0x4(%bp),%ax
    20a4:	5d                   	pop    %bp
    20a5:	c3                   	ret
    20a6:	55                   	push   %bp
    20a7:	8b ec                	mov    %sp,%bp
    20a9:	e8 07 30             	call   0x50b3
    20ac:	5d                   	pop    %bp
    20ad:	c3                   	ret
    20ae:	55                   	push   %bp
    20af:	8b ec                	mov    %sp,%bp
    20b1:	66 6a 00             	pushl  $0x0
    20b4:	e8 a5 24             	call   0x455c
    20b7:	83 c4 04             	add    $0x4,%sp
    20ba:	50                   	push   %ax
    20bb:	e8 51 23             	call   0x440f
    20be:	83 c4 02             	add    $0x2,%sp
    20c1:	5d                   	pop    %bp
    20c2:	c3                   	ret
    20c3:	55                   	push   %bp
    20c4:	8b ec                	mov    %sp,%bp
    20c6:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    20cb:	75 12                	jne    0x20df
    20cd:	6a 1c                	push   $0x1c
    20cf:	e8 93 22             	call   0x4365
    20d2:	83 c4 02             	add    $0x2,%sp
    20d5:	89 56 06             	mov    %dx,0x6(%bp)
    20d8:	89 46 04             	mov    %ax,0x4(%bp)
    20db:	0b c2                	or     %dx,%ax
    20dd:	74 35                	je     0x2114
    20df:	c4 5e 04             	les    0x4(%bp),%bx
    20e2:	26 c7 07 d5 01       	movw   $0x1d5,%es:(%bx)
    20e7:	8b 46 0a             	mov    0xa(%bp),%ax
    20ea:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    20ee:	8b 46 0c             	mov    0xc(%bp),%ax
    20f1:	26 89 47 04          	mov    %ax,%es:0x4(%bx)
    20f5:	8b 46 0e             	mov    0xe(%bp),%ax
    20f8:	26 89 47 06          	mov    %ax,%es:0x6(%bx)
    20fc:	8b 46 10             	mov    0x10(%bp),%ax
    20ff:	26 89 47 08          	mov    %ax,%es:0x8(%bx)
    2103:	8b 46 08             	mov    0x8(%bp),%ax
    2106:	26 89 47 0a          	mov    %ax,%es:0xa(%bx)
    210a:	33 c0                	xor    %ax,%ax
    210c:	26 89 47 0e          	mov    %ax,%es:0xe(%bx)
    2110:	26 89 47 0c          	mov    %ax,%es:0xc(%bx)
    2114:	8b 56 06             	mov    0x6(%bp),%dx
    2117:	8b 46 04             	mov    0x4(%bp),%ax
    211a:	5d                   	pop    %bp
    211b:	c3                   	ret
    211c:	55                   	push   %bp
    211d:	8b ec                	mov    %sp,%bp
    211f:	83 ec 06             	sub    $0x6,%sp
    2122:	c4 5e 04             	les    0x4(%bp),%bx
    2125:	66 26 8b 07          	mov    %es:(%bx),%eax
    2129:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    212d:	c7 46 fa 00 00       	movw   $0x0,-0x6(%bp)
    2132:	8b 46 fa             	mov    -0x6(%bp),%ax
    2135:	3b 46 08             	cmp    0x8(%bp),%ax
    2138:	7d 16                	jge    0x2150
    213a:	c4 5e fc             	les    -0x4(%bp),%bx
    213d:	66 26 8b 07          	mov    %es:(%bx),%eax
    2141:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    2145:	ff 46 fa             	incw   -0x6(%bp)
    2148:	8b 46 fa             	mov    -0x6(%bp),%ax
    214b:	3b 46 08             	cmp    0x8(%bp),%ax
    214e:	7c ea                	jl     0x213a
    2150:	8b 56 fe             	mov    -0x2(%bp),%dx
    2153:	8b 46 fc             	mov    -0x4(%bp),%ax
    2156:	05 04 00             	add    $0x4,%ax
    2159:	c9                   	leave
    215a:	c3                   	ret
    215b:	55                   	push   %bp
    215c:	8b ec                	mov    %sp,%bp
    215e:	83 ec 04             	sub    $0x4,%sp
    2161:	66             	pushl  0x8(%bp)
