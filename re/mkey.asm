; mkey @ 0x371 len 0x60
00000371 <.data+0x371>:
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
     3b7:	8b 46 f4             	mov    -0xc(%bp),%ax
     3ba:	89 46 f8             	mov    %ax,-0x8(%bp)
     3bd:	8a 46 cb             	mov    -0x35(%bp),%al
     3c0:	88 46 c5             	mov    %al,-0x3b(%bp)
     3c3:	8b 5e f2             	mov    -0xe(%bp),%bx
     3c6:	81 3f 00 24          	cmpw   $0x2400,(%bx)
     3ca:	75 1c                	jne    0x3e8
     3cc:	83 7e c8 01          	cmpw   $0x1,-0x38(%bp)
     3d0:	7e                 	jle    0x3e8
