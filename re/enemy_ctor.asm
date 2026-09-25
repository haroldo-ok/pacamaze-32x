; enemy_ctor @ 0x1FFB len 0x100
00001ffb <.data+0x1ffb>:
    1ffb:	55                   	push   %bp
    1ffc:	8b ec                	mov    %sp,%bp
    1ffe:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    2003:	75 12                	jne    0x2017
    2005:	6a 26                	push   $0x26
    2007:	e8 5b 23             	call   0x4365
    200a:	83 c4 02             	add    $0x2,%sp
    200d:	89 56 06             	mov    %dx,0x6(%bp)
    2010:	89 46 04             	mov    %ax,0x4(%bp)
    2013:	0b c2                	or     %dx,%ax
    2015:	74 43                	je     0x205a
    2017:	8d 46 0a             	lea    0xa(%bp),%ax
    201a:	8c d2                	mov    %ss,%dx
    201c:	b9 08 00             	mov    $0x8,%cx
    201f:	e8 dc 21             	call   0x41fe
    2022:	ff 76 08             	push   0x8(%bp)
    2025:	66 ff 76 04          	pushl  0x4(%bp)
    2029:	e8 97 00             	call   0x20c3
    202c:	83 c4 0e             	add    $0xe,%sp
    202f:	c4 5e 04             	les    0x4(%bp),%bx
    2032:	26 c7 07 ed 01       	movw   $0x1ed,%es:(%bx)
    2037:	8b 46 12             	mov    0x12(%bp),%ax
    203a:	26 89 47 22          	mov    %ax,%es:0x22(%bx)
    203e:	33 c0                	xor    %ax,%ax
    2040:	26 89 47 20          	mov    %ax,%es:0x20(%bx)
    2044:	26 89 47 1c          	mov    %ax,%es:0x1c(%bx)
    2048:	26 c7 47 1e 01 00    	movw   $0x1,%es:0x1e(%bx)
    204e:	b8 20 00             	mov    $0x20,%ax
    2051:	99                   	cwtd
    2052:	26 f7 7f 22          	idivw  %es:0x22(%bx)
    2056:	26 89 47 24          	mov    %ax,%es:0x24(%bx)
    205a:	8b 56 06             	mov    0x6(%bp),%dx
    205d:	8b 46 04             	mov    0x4(%bp),%ax
    2060:	5d                   	pop    %bp
    2061:	c3                   	ret
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
    20f8:	26 89 47           	mov    %ax,%es:0x6(%bx)
