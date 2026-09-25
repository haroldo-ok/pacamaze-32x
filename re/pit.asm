; pit @ 0x5090 len 0x60
00005090 <.data+0x5090>:
    5090:	ba 12 00             	mov    $0x12,%dx
    5093:	3b d3                	cmp    %bx,%dx
    5095:	73 1a                	jae    0x50b1
    5097:	f7 f3                	div    %bx
    5099:	8b d8                	mov    %ax,%bx
    509b:	e4 61                	in     $0x61,%al
    509d:	a8 03                	test   $0x3,%al
    509f:	75 08                	jne    0x50a9
    50a1:	0c 03                	or     $0x3,%al
    50a3:	e6 61                	out    %al,$0x61
    50a5:	b0 b6                	mov    $0xb6,%al
    50a7:	e6 43                	out    %al,$0x43
    50a9:	8a c3                	mov    %bl,%al
    50ab:	e6 42                	out    %al,$0x42
    50ad:	8a c7                	mov    %bh,%al
    50af:	e6 42                	out    %al,$0x42
    50b1:	5d                   	pop    %bp
    50b2:	c3                   	ret
    50b3:	e4 61                	in     $0x61,%al
    50b5:	24 fc                	and    $0xfc,%al
    50b7:	e6 61                	out    %al,$0x61
    50b9:	c3                   	ret
    50ba:	55                   	push   %bp
    50bb:	8b ec                	mov    %sp,%bp
    50bd:	56                   	push   %si
    50be:	57                   	push   %di
    50bf:	06                   	push   %es
    50c0:	55                   	push   %bp
    50c1:	c4 76 04             	les    0x4(%bp),%si
    50c4:	fc                   	cld
    50c5:	2b c0                	sub    %ax,%ax
    50c7:	99                   	cwtd
    50c8:	b9 0a 00             	mov    $0xa,%cx
    50cb:	b7 00                	mov    $0x0,%bh
    50cd:	bf 57 07             	mov    $0x757,%di
    50d0:	26 8a 1c             	mov    %es:(%si),%bl
    50d3:	46                   	inc    %si
    50d4:	f6 01 01             	testb  $0x1,(%bx,%di)
    50d7:	75 f7                	jne    0x50d0
    50d9:	bd 00 00             	mov    $0x0,%bp
    50dc:	80 fb 2b             	cmp    $0x2b,%bl
    50df:	74 06                	je     0x50e7
    50e1:	80 fb 2d             	cmp    $0x2d,%bl
    50e4:	75 05                	jne    0x50eb
    50e6:	45                   	inc    %bp
    50e7:	26 8a 1c             	mov    %es:(%si),%bl
    50ea:	46                   	inc    %si
    50eb:	80 fb 39             	cmp    $0x39,%bl
    50ee:	77 2f                	ja     0x511f
