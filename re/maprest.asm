; maprest @ 0x4F1 len 0x160
000004f1 <.data+0x4f1>:
     4f1:	81 7e 08 80 00       	cmpw   $0x80,0x8(%bp)
     4f6:	7c 60                	jl     0x558
     4f8:	81 7e 08 80 01       	cmpw   $0x180,0x8(%bp)
     4fd:	7d 59                	jge    0x558
     4ff:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     504:	c7 46 e0 03 76       	movw   $0x7603,-0x20(%bp)
     509:	8b 46 fc             	mov    -0x4(%bp),%ax
     50c:	89 46 de             	mov    %ax,-0x22(%bp)
     50f:	c7 46 cc 00 00       	movw   $0x0,-0x34(%bp)
     514:	8b 46 e0             	mov    -0x20(%bp),%ax
     517:	89 46 e4             	mov    %ax,-0x1c(%bp)
     51a:	8b 46 fa             	mov    -0x6(%bp),%ax
     51d:	89 46 e2             	mov    %ax,-0x1e(%bp)
     520:	c4 5e 0a             	les    0xa(%bp),%bx
     523:	26 ff 37             	push   %es:(%bx)
     526:	8b 5e e4             	mov    -0x1c(%bp),%bx
     529:	8a 07                	mov    (%bx),%al
     52b:	50                   	push   %ax
     52c:	ff 76 e2             	push   -0x1e(%bp)
     52f:	ff 76 de             	push   -0x22(%bp)
     532:	e8 8a 1f             	call   0x24bf
     535:	83 c4 08             	add    $0x8,%sp
     538:	83 6e e4 14          	subw   $0x14,-0x1c(%bp)
     53c:	ff 46 e2             	incw   -0x1e(%bp)
     53f:	ff 46 cc             	incw   -0x34(%bp)
     542:	83 7e cc 05          	cmpw   $0x5,-0x34(%bp)
     546:	7c d8                	jl     0x520
     548:	83 46 e0 02          	addw   $0x2,-0x20(%bp)
     54c:	ff 46 de             	incw   -0x22(%bp)
     54f:	ff 46 fe             	incw   -0x2(%bp)
     552:	83 7e fe 05          	cmpw   $0x5,-0x2(%bp)
     556:	7c b7                	jl     0x50f
     558:	81 7e 08 80 01       	cmpw   $0x180,0x8(%bp)
     55d:	7c 60                	jl     0x5bf
     55f:	81 7e 08 80 02       	cmpw   $0x280,0x8(%bp)
     564:	7d 59                	jge    0x5bf
     566:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     56b:	c7 46 d8 b3 75       	movw   $0x75b3,-0x28(%bp)
     570:	8b 46 fc             	mov    -0x4(%bp),%ax
     573:	89 46 d6             	mov    %ax,-0x2a(%bp)
     576:	c7 46 cc 00 00       	movw   $0x0,-0x34(%bp)
     57b:	8b 46 d8             	mov    -0x28(%bp),%ax
     57e:	89 46 dc             	mov    %ax,-0x24(%bp)
     581:	8b 46 fa             	mov    -0x6(%bp),%ax
     584:	89 46 da             	mov    %ax,-0x26(%bp)
     587:	c4 5e 0a             	les    0xa(%bp),%bx
     58a:	26 ff 37             	push   %es:(%bx)
     58d:	8b 5e dc             	mov    -0x24(%bp),%bx
     590:	8a 07                	mov    (%bx),%al
     592:	50                   	push   %ax
     593:	ff 76 da             	push   -0x26(%bp)
     596:	ff 76 d6             	push   -0x2a(%bp)
     599:	e8 23 1f             	call   0x24bf
     59c:	83 c4 08             	add    $0x8,%sp
     59f:	83 46 dc 02          	addw   $0x2,-0x24(%bp)
     5a3:	ff 46 da             	incw   -0x26(%bp)
     5a6:	ff 46 cc             	incw   -0x34(%bp)
     5a9:	83 7e cc 05          	cmpw   $0x5,-0x34(%bp)
     5ad:	7c d8                	jl     0x587
     5af:	83 46 d8 14          	addw   $0x14,-0x28(%bp)
     5b3:	ff 46 d6             	incw   -0x2a(%bp)
     5b6:	ff 46 fe             	incw   -0x2(%bp)
     5b9:	83 7e fe 05          	cmpw   $0x5,-0x2(%bp)
     5bd:	7c b7                	jl     0x576
     5bf:	81 7e 08 80 02       	cmpw   $0x280,0x8(%bp)
     5c4:	7c 60                	jl     0x626
     5c6:	81 7e 08 80 03       	cmpw   $0x380,0x8(%bp)
     5cb:	7d 59                	jge    0x626
     5cd:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     5d2:	c7 46 d0 b3 75       	movw   $0x75b3,-0x30(%bp)
     5d7:	8b 46 fc             	mov    -0x4(%bp),%ax
     5da:	89 46 ce             	mov    %ax,-0x32(%bp)
     5dd:	c7 46 cc 00 00       	movw   $0x0,-0x34(%bp)
     5e2:	8b 46 d0             	mov    -0x30(%bp),%ax
     5e5:	89 46 d4             	mov    %ax,-0x2c(%bp)
     5e8:	8b 46 fa             	mov    -0x6(%bp),%ax
     5eb:	89 46 d2             	mov    %ax,-0x2e(%bp)
     5ee:	c4 5e 0a             	les    0xa(%bp),%bx
     5f1:	26 ff 37             	push   %es:(%bx)
     5f4:	8b 5e d4             	mov    -0x2c(%bp),%bx
     5f7:	8a 07                	mov    (%bx),%al
     5f9:	50                   	push   %ax
     5fa:	ff 76 d2             	push   -0x2e(%bp)
     5fd:	ff 76 ce             	push   -0x32(%bp)
     600:	e8 bc 1e             	call   0x24bf
     603:	83 c4 08             	add    $0x8,%sp
     606:	83 46 d4 14          	addw   $0x14,-0x2c(%bp)
     60a:	ff 46 d2             	incw   -0x2e(%bp)
     60d:	ff 46 cc             	incw   -0x34(%bp)
     610:	83 7e cc 05          	cmpw   $0x5,-0x34(%bp)
     614:	7c d8                	jl     0x5ee
     616:	83 46 d0 02          	addw   $0x2,-0x30(%bp)
     61a:	ff 46 ce             	incw   -0x32(%bp)
     61d:	ff 46 fe             	incw   -0x2(%bp)
     620:	83 7e fe 05          	cmpw   $0x5,-0x2(%bp)
     624:	7c b7                	jl     0x5dd
     626:	c4 5e 0a             	les    0xa(%bp),%bx
     629:	26 ff 37             	push   %es:(%bx)
     62c:	6a 52                	push   $0x52
     62e:	66 68 e0 00 c4 00    	pushl  $0xc400e0
     634:	66 68 1f 00 03 00    	pushl  $0x3001f
     63a:	e8 86 1f             	call   0x25c3
     63d:	83 c4 0c             	add    $0xc,%sp
     640:	c4 5e 0a             	les    0xa(%bp),%bx
     643:	26 ff 37             	push   %es:(%bx)
     646:	6a 55                	push   $0x55
     648:	66 68 df 00 c3 00    	pushl  $0xc300df
     64e:	66 68 20       	pushl  $0x40020
