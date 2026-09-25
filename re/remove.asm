; remove @ 0x21E8 len 0x40
000021e8 <.data+0x21e8>:
    21e8:	55                   	push   %bp
    21e9:	8b ec                	mov    %sp,%bp
    21eb:	83 ec 08             	sub    $0x8,%sp
    21ee:	c4 5e 04             	les    0x4(%bp),%bx
    21f1:	26 c4 1f             	les    %es:(%bx),%bx
    21f4:	66 26 8b 07          	mov    %es:(%bx),%eax
    21f8:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    21fc:	26 ff 4f 08          	decw   %es:0x8(%bx)
    2200:	c4 5e 04             	les    0x4(%bp),%bx
    2203:	66 26 8b 47 04       	mov    %es:0x4(%bx),%eax
    2208:	66 3b 46 fc          	cmp    -0x4(%bp),%eax
    220c:	75 3b                	jne    0x2249
    220e:	26 c4 5f 04          	les    %es:0x4(%bx),%bx
    2212:	66 26 8b 07          	mov    %es:(%bx),%eax
    2216:	c4 5e 04             	les    0x4(%bp),%bx
    2219:	26 c4 1f             	les    %es:(%bx),%bx
    221c:	66 26 89 07          	mov    %eax,%es:(%bx)
    2220:	66 ff 76 fc          	pushl  -0x4(%bp)
    2224:	e8 a8 1d             	call   0x3fcf
    2227:	83               	add    $0x4,%sp
