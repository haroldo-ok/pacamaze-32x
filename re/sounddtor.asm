; sounddtor @ 0x20A6 len 0x30
000020a6 <.data+0x20a6>:
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
    20d5:	89               	mov    %dx,0x6(%bp)
