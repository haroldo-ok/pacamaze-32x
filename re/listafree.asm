; listafree @ 0x218C len 0x60
0000218c <.data+0x218c>:
    218c:	55                   	push   %bp
    218d:	8b ec                	mov    %sp,%bp
    218f:	83 ec 08             	sub    $0x8,%sp
    2192:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    2197:	74 4d                	je     0x21e6
    2199:	c4 5e 04             	les    0x4(%bp),%bx
    219c:	66 26 8b 07          	mov    %es:(%bx),%eax
    21a0:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    21a4:	eb 1d                	jmp    0x21c3
    21a6:	66 8b 46 fc          	mov    -0x4(%bp),%eax
    21aa:	66 89 46 f8          	mov    %eax,-0x8(%bp)
    21ae:	c4 5e fc             	les    -0x4(%bp),%bx
    21b1:	66 26 8b 07          	mov    %es:(%bx),%eax
    21b5:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    21b9:	66 ff 76 f8          	pushl  -0x8(%bp)
    21bd:	e8 0f 1e             	call   0x3fcf
    21c0:	83 c4 04             	add    $0x4,%sp
    21c3:	66 83 7e fc 00       	cmpl   $0x0,-0x4(%bp)
    21c8:	75 dc                	jne    0x21a6
    21ca:	c4 5e 04             	les    0x4(%bp),%bx
    21cd:	66 26 c7 07 00 00 00 	movl   $0x0,%es:(%bx)
    21d4:	00 
    21d5:	f7 46 08 01 00       	testw  $0x1,0x8(%bp)
    21da:	74 0a                	je     0x21e6
    21dc:	ff 76 06             	push   0x6(%bp)
    21df:	53                   	push   %bx
    21e0:	e8 ec 1d             	call   0x3fcf
    21e3:	83 c4 04             	add    $0x4,%sp
    21e6:	c9                   	leave
    21e7:	c3                   	ret
    21e8:	55                   	push   %bp
    21e9:	8b ec                	mov    %sp,%bp
    21eb:	83               	sub    $0x8,%sp
