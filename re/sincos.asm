; sincos @ 0x30A len 0x30
0000030a <.data+0x30a>:
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
     338:	26 83            	cmpw   $0x0,%es:(%bx)
