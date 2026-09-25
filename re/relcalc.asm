; relcalc @ 0x2B9 len 0x100
000002b9 <.data+0x2b9>:
     2b9:	55                   	push   %bp
     2ba:	8b ec                	mov    %sp,%bp
     2bc:	83 ec 08             	sub    $0x8,%sp
     2bf:	66 8b 46 08          	mov    0x8(%bp),%eax
     2c3:	66 89 46 f8          	mov    %eax,-0x8(%bp)
     2c7:	66 8b 46 0c          	mov    0xc(%bp),%eax
     2cb:	66 89 46 fc          	mov    %eax,-0x4(%bp)
     2cf:	c4 5e 04             	les    0x4(%bp),%bx
     2d2:	8b 46 f8             	mov    -0x8(%bp),%ax
     2d5:	26 89 07             	mov    %ax,%es:(%bx)
     2d8:	8b 46 fa             	mov    -0x6(%bp),%ax
     2db:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
     2df:	8b 46 fc             	mov    -0x4(%bp),%ax
     2e2:	26 89 47 04          	mov    %ax,%es:0x4(%bx)
     2e6:	8b 46 fe             	mov    -0x2(%bp),%ax
     2e9:	26 89 47 06          	mov    %ax,%es:0x6(%bx)
     2ed:	8b 56 06             	mov    0x6(%bp),%dx
     2f0:	8b 46 04             	mov    0x4(%bp),%ax
     2f3:	c9                   	leave
     2f4:	c3                   	ret
     2f5:	66 68 00 08 00 00    	pushl  $0x800
     2fb:	1e                   	push   %ds
     2fc:	68 df 76             	push   $0x76df
     2ff:	1e                   	push   %ds
     300:	68 fe 00             	push   $0xfe
     303:	e8 27 2c             	call   0x2f2d
     306:	83 c4 0c             	add    $0xc,%sp
     309:	c3                   	ret
     30a:	55                   	push   %bp
     30b:	8b ec                	mov    %sp,%bp
     30d:	8b 5e 04             	mov    0x4(%bp),%bx
     310:	81 e3 ff 03          	and    $0x3ff,%bx
     314:	d1 e3                	shl    $1,%bx
     316:	8b 87 df 76          	mov    0x76df(%bx),%ax
     31a:	5d                   	pop    %bp
     31b:	c3                   	ret
     31c:	55                   	push   %bp
     31d:	8b ec                	mov    %sp,%bp
     31f:	8b 5e 04             	mov    0x4(%bp),%bx
     322:	81 c3 00 01          	add    $0x100,%bx
     326:	81 e3 ff 03          	and    $0x3ff,%bx
     32a:	d1 e3                	shl    $1,%bx
     32c:	8b 87 df 76          	mov    0x76df(%bx),%ax
     330:	5d                   	pop    %bp
     331:	c3                   	ret
     332:	55                   	push   %bp
     333:	8b ec                	mov    %sp,%bp
     335:	c4 5e 04             	les    0x4(%bp),%bx
     338:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
     33c:	75 05                	jne    0x343
     33e:	b8 e8 03             	mov    $0x3e8,%ax
     341:	eb 02                	jmp    0x345
     343:	33 c0                	xor    %ax,%ax
     345:	c4 5e 04             	les    0x4(%bp),%bx
     348:	26 89 07             	mov    %ax,%es:(%bx)
     34b:	e8 67 21             	call   0x24b5
     34e:	0b c0                	or     %ax,%ax
     350:	75 f9                	jne    0x34b
     352:	c4 5e 04             	les    0x4(%bp),%bx
     355:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
     359:	75 04                	jne    0x35f
     35b:	b0 01                	mov    $0x1,%al
     35d:	eb 02                	jmp    0x361
     35f:	b0 00                	mov    $0x0,%al
     361:	50                   	push   %ax
     362:	e8 11 21             	call   0x2476
     365:	83 c4 02             	add    $0x2,%sp
     368:	e8 4a 21             	call   0x24b5
     36b:	0b c0                	or     %ax,%ax
     36d:	74 f9                	je     0x368
     36f:	5d                   	pop    %bp
     370:	c3                   	ret
     371:	55                   	push   %bp
     372:	8b ec                	mov    %sp,%bp
     374:	83 ec 3c             	sub    $0x3c,%sp
     377:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     37c:	c7 46 f0 b3 6d       	movw   $0x6db3,-0x10(%bp)
     381:	c7 46 ee 20 00       	movw   $0x20,-0x12(%bp)
     386:	c7 46 cc 00 00       	movw   $0x0,-0x34(%bp)
     38b:	c7 46 f4 04 00       	movw   $0x4,-0xc(%bp)
     390:	8b 46 f0             	mov    -0x10(%bp),%ax
     393:	89 46 f2             	mov    %ax,-0xe(%bp)
     396:	c6 46 cb 30          	movb   $0x30,-0x35(%bp)
     39a:	8b 5e f2             	mov    -0xe(%bp),%bx
     39d:	81 3f 00 28          	cmpw   $0x2800,(%bx)
     3a1:	75 04                	jne    0x3a7
     3a3:	c6 46 cb 00          	movb   $0x0,-0x35(%bp)
     3a7:	c7 46 c8 00 00       	movw   $0x0,-0x38(%bp)
     3ac:	8b 46 ee             	mov    -0x12(%bp),%ax
     3af:	89 46 f6             	mov    %ax,-0xa(%bp)
     3b2:	c7 46 c6 00 00       	movw   $0x0,-0x3a(%bp)
     3b7:	8b 46              	mov    -0xc(%bp),%ax
