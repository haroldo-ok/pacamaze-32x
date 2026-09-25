; flip @ 0x332 len 0x80
00000332 <.data+0x332>:
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
