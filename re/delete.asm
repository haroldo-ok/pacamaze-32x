; delete @ 0x269A len 0x30
0000269a <.data+0x269a>:
    269a:	55                   	push   %bp
    269b:	8b ec                	mov    %sp,%bp
    269d:	66 83 7e 04 00       	cmpl   $0x0,0x4(%bp)
    26a2:	74 45                	je     0x26e9
    26a4:	c4 5e 04             	les    0x4(%bp),%bx
    26a7:	26 c7 07 d5 01       	movw   $0x1d5,%es:(%bx)
    26ac:	6a 00                	push   $0x0
    26ae:	6a 00                	push   $0x0
    26b0:	66 26 ff 77 14       	pushl  %es:0x14(%bx)
    26b5:	66 26 ff 77 10       	pushl  %es:0x10(%bx)
    26ba:	e8 63 ff             	call   0x2620
    26bd:	83 c4 0c             	add    $0xc,%sp
    26c0:	68 e8 03             	push   $0x3e8
    26c3:	6a 00                	push   $0x0
    26c5:	c4 5e 04             	les    0x4(%bp),%bx
    26c8:	66 26          	pushl  %es:0x14(%bx)
