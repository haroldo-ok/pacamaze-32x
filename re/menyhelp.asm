; menyhelp @ 0x32D2 len 0xD0
000032d2 <.data+0x32d2>:
    32d2:	66 68 a0 0e 00 00    	pushl  $0xea0
    32d8:	1e                   	push   %ds
    32d9:	68 16 7f             	push   $0x7f16
    32dc:	1e                   	push   %ds
    32dd:	68 13 02             	push   $0x213
    32e0:	e8 4a fc             	call   0x2f2d
    32e3:	83 c4 0c             	add    $0xc,%sp
    32e6:	c3                   	ret
    32e7:	55                   	push   %bp
    32e8:	8b ec                	mov    %sp,%bp
    32ea:	81 ec e6 03          	sub    $0x3e6,%sp
    32ee:	68 00 4b             	push   $0x4b00
    32f1:	e8 71 10             	call   0x4365
    32f4:	83 c4 02             	add    $0x2,%sp
    32f7:	89 56 fe             	mov    %dx,-0x2(%bp)
    32fa:	89 46 fc             	mov    %ax,-0x4(%bp)
    32fd:	c7 46 fa 00 00       	movw   $0x0,-0x6(%bp)
    3302:	8b 46 fa             	mov    -0x6(%bp),%ax
    3305:	ff 46 fa             	incw   -0x6(%bp)
    3308:	c4 5e fc             	les    -0x4(%bp),%bx
    330b:	03 d8                	add    %ax,%bx
    330d:	26 c6 07 31          	movb   $0x31,%es:(%bx)
    3311:	81 7e fa 00 4b       	cmpw   $0x4b00,-0x6(%bp)
    3316:	7c ea                	jl     0x3302
    3318:	16                   	push   %ss
    3319:	8d 86 1a fc          	lea    -0x3e6(%bp),%ax
    331d:	50                   	push   %ax
    331e:	1e                   	push   %ds
    331f:	68 1c 02             	push   $0x21c
    3322:	e8 6e ff             	call   0x3293
    3325:	83 c4 08             	add    $0x8,%sp
    3328:	c7 46 fa 01 00       	movw   $0x1,-0x6(%bp)
    332d:	c7 46 f4 40 01       	movw   $0x140,-0xc(%bp)
    3332:	e9 bd 00             	jmp    0x33f2
    3335:	8b 5e fa             	mov    -0x6(%bp),%bx
    3338:	83 c3 3c             	add    $0x3c,%bx
    333b:	b8 40 38             	mov    $0x3840,%ax
    333e:	99                   	cwtd
    333f:	f7 fb                	idiv   %bx
    3341:	89 46 ec             	mov    %ax,-0x14(%bp)
    3344:	66 0f b7 5e ec       	movzwl -0x14(%bp),%ebx
    3349:	66 b8 a0 8c 00 00    	mov    $0x8ca0,%eax
    334f:	66 99                	cltd
    3351:	66 f7 fb             	idiv   %ebx
    3354:	89 46 ea             	mov    %ax,-0x16(%bp)
    3357:	8b 46 ec             	mov    -0x14(%bp),%ax
    335a:	2d 78 00             	sub    $0x78,%ax
    335d:	bb 0a 00             	mov    $0xa,%bx
    3360:	33 d2                	xor    %dx,%dx
    3362:	f7 f3                	div    %bx
    3364:	ba 50 00             	mov    $0x50,%dx
    3367:	f7 ea                	imul   %dx
    3369:	89 46 e8             	mov    %ax,-0x18(%bp)
    336c:	b8 40 01             	mov    $0x140,%ax
    336f:	2b 46 ea             	sub    -0x16(%bp),%ax
    3372:	d1 e8                	shr    $1,%ax
    3374:	89 46 e6             	mov    %ax,-0x1a(%bp)
    3377:	66 c7 46 e2 00 00 00 	movl   $0x0,-0x1e(%bp)
    337e:	00 
    337f:	66 0f b7 5e ea       	movzwl -0x16(%bp),%ebx
    3384:	66 b8 00 00 50 00    	mov    $0x500000,%eax
    338a:	66 99                	cltd
    338c:	66 f7 fb             	idiv   %ebx
    338f:	66 89 46 de          	mov    %eax,-0x22(%bp)
    3393:	8b 46 e6             	mov    -0x1a(%bp),%ax
    3396:	89 46 dc             	mov    %ax,-0x24(%bp)
    3399:	8b 46 fc             	mov    -0x4(%bp),%ax
    339c:	8b 56 e6             	mov    -0x1a(%bp),%dx
    339f:	03 56 f4             	add    -0xc(%bp),%dx
