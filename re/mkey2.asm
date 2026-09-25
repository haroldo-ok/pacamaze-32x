; mkey2 @ 0x3D1 len 0x130
000003d1 <.data+0x3d1>:
     3d1:	16                   	push   %ss
     3d2:	83 7e c8 04          	cmpw   $0x4,-0x38(%bp)
     3d6:	7d 10                	jge    0x3e8
     3d8:	83 7e c6 01          	cmpw   $0x1,-0x3a(%bp)
     3dc:	7e 0a                	jle    0x3e8
     3de:	83 7e c6 04          	cmpw   $0x4,-0x3a(%bp)
     3e2:	7d 04                	jge    0x3e8
     3e4:	c6 46 c5 94          	movb   $0x94,-0x3b(%bp)
     3e8:	c4 5e 0a             	les    0xa(%bp),%bx
     3eb:	26 ff 37             	push   %es:(%bx)
     3ee:	8a 46 c5             	mov    -0x3b(%bp),%al
     3f1:	50                   	push   %ax
     3f2:	ff 76 f8             	push   -0x8(%bp)
     3f5:	ff 76 f6             	push   -0xa(%bp)
     3f8:	e8 c4 20             	call   0x24bf
     3fb:	83 c4 08             	add    $0x8,%sp
     3fe:	ff 46 f8             	incw   -0x8(%bp)
     401:	ff 46 c6             	incw   -0x3a(%bp)
     404:	83 7e c6 06          	cmpw   $0x6,-0x3a(%bp)
     408:	7c b3                	jl     0x3bd
     40a:	ff 46 f6             	incw   -0xa(%bp)
     40d:	ff 46 c8             	incw   -0x38(%bp)
     410:	83 7e c8 06          	cmpw   $0x6,-0x38(%bp)
     414:	7c 9c                	jl     0x3b2
     416:	83 46 f4 06          	addw   $0x6,-0xc(%bp)
     41a:	83 46 f2 40          	addw   $0x40,-0xe(%bp)
     41e:	ff 46 cc             	incw   -0x34(%bp)
     421:	83 7e cc 20          	cmpw   $0x20,-0x34(%bp)
     425:	7d 03                	jge    0x42a
     427:	e9 6c ff             	jmp    0x396
     42a:	83 46 f0 02          	addw   $0x2,-0x10(%bp)
     42e:	83 46 ee 06          	addw   $0x6,-0x12(%bp)
     432:	ff 46 fe             	incw   -0x2(%bp)
     435:	83 7e fe 20          	cmpw   $0x20,-0x2(%bp)
     439:	7d 03                	jge    0x43e
     43b:	e9 48 ff             	jmp    0x386
     43e:	c4 5e 04             	les    0x4(%bp),%bx
     441:	66 26 8b 07          	mov    %es:(%bx),%eax
     445:	66 c1 f8 05          	sar    $0x5,%eax
     449:	66 6b c0 06          	imul   $0x6,%eax,%eax
     44d:	05 20 00             	add    $0x20,%ax
     450:	89 46 fc             	mov    %ax,-0x4(%bp)
     453:	66 26 8b 47 04       	mov    %es:0x4(%bx),%eax
     458:	66 c1 f8 05          	sar    $0x5,%eax
     45c:	66 6b c0 06          	imul   $0x6,%eax,%eax
     460:	05 04 00             	add    $0x4,%ax
     463:	89 46 fa             	mov    %ax,-0x6(%bp)
     466:	81 7e 08 00 04       	cmpw   $0x400,0x8(%bp)
     46b:	7c 05                	jl     0x472
     46d:	81 6e 08 00 04       	subw   $0x400,0x8(%bp)
     472:	83 7e 08 00          	cmpw   $0x0,0x8(%bp)
     476:	7d 05                	jge    0x47d
     478:	81 46 08 00 04       	addw   $0x400,0x8(%bp)
     47d:	83 7e 08 00          	cmpw   $0x0,0x8(%bp)
     481:	7c 07                	jl     0x48a
     483:	81 7e 08 80 00       	cmpw   $0x80,0x8(%bp)
     488:	7c 0e                	jl     0x498
     48a:	81 7e 08 80 03       	cmpw   $0x380,0x8(%bp)
     48f:	7c 60                	jl     0x4f1
     491:	81 7e 08 00 04       	cmpw   $0x400,0x8(%bp)
     496:	7d 59                	jge    0x4f1
     498:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     49d:	c7 46 e8 03 76       	movw   $0x7603,-0x18(%bp)
     4a2:	8b 46 fc             	mov    -0x4(%bp),%ax
     4a5:	89 46 e6             	mov    %ax,-0x1a(%bp)
     4a8:	c7 46 cc 00 00       	movw   $0x0,-0x34(%bp)
     4ad:	8b 46 e8             	mov    -0x18(%bp),%ax
     4b0:	89 46 ec             	mov    %ax,-0x14(%bp)
     4b3:	8b 46 fa             	mov    -0x6(%bp),%ax
     4b6:	89 46 ea             	mov    %ax,-0x16(%bp)
     4b9:	c4 5e 0a             	les    0xa(%bp),%bx
     4bc:	26 ff 37             	push   %es:(%bx)
     4bf:	8b 5e ec             	mov    -0x14(%bp),%bx
     4c2:	8a 07                	mov    (%bx),%al
     4c4:	50                   	push   %ax
     4c5:	ff 76 ea             	push   -0x16(%bp)
     4c8:	ff 76 e6             	push   -0x1a(%bp)
     4cb:	e8 f1 1f             	call   0x24bf
     4ce:	83 c4 08             	add    $0x8,%sp
     4d1:	83 46 ec 02          	addw   $0x2,-0x14(%bp)
     4d5:	ff 46 ea             	incw   -0x16(%bp)
     4d8:	ff 46 cc             	incw   -0x34(%bp)
     4db:	83 7e cc 05          	cmpw   $0x5,-0x34(%bp)
     4df:	7c d8                	jl     0x4b9
     4e1:	83 6e e8 14          	subw   $0x14,-0x18(%bp)
     4e5:	ff 46 e6             	incw   -0x1a(%bp)
     4e8:	ff 46 fe             	incw   -0x2(%bp)
     4eb:	83 7e fe 05          	cmpw   $0x5,-0x2(%bp)
     4ef:	7c b7                	jl     0x4a8
     4f1:	81 7e 08 80 00       	cmpw   $0x80,0x8(%bp)
     4f6:	7c 60                	jl     0x558
     4f8:	81 7e 08 80 01       	cmpw   $0x180,0x8(%bp)
     4fd:	7d 59                	jge    0x558
     4ff:	c7 46          	movw   $0x0,-0x2(%bp)
