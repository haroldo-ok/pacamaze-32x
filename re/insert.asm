; insert @ 0x215B len 0x60
0000215b <.data+0x215b>:
    215b:	55                   	push   %bp
    215c:	8b ec                	mov    %sp,%bp
    215e:	83 ec 04             	sub    $0x4,%sp
    2161:	66 ff 76 08          	pushl  0x8(%bp)
    2165:	c4 5e 04             	les    0x4(%bp),%bx
    2168:	66 26 ff 37          	pushl  %es:(%bx)
    216c:	66 6a 00             	pushl  $0x0
    216f:	e8 19 01             	call   0x228b
    2172:	83 c4 0c             	add    $0xc,%sp
    2175:	89 56 fe             	mov    %dx,-0x2(%bp)
    2178:	89 46 fc             	mov    %ax,-0x4(%bp)
    217b:	c4 5e 04             	les    0x4(%bp),%bx
    217e:	66 8b 46 fc          	mov    -0x4(%bp),%eax
    2182:	66 26 89 07          	mov    %eax,%es:(%bx)
    2186:	26 ff 47 08          	incw   %es:0x8(%bx)
    218a:	c9                   	leave
    218b:	c3                   	ret
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
    21b9:	66 ff            	pushl  -0x8(%bp)
