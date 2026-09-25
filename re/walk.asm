; walk @ 0x28F len 0x80
0000028f <.data+0x28f>:
     28f:	55                   	push   %bp
     290:	8b ec                	mov    %sp,%bp
     292:	c4 5e 04             	les    0x4(%bp),%bx
     295:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
     299:	7e 1c                	jle    0x2b7
     29b:	26 ff 37             	push   %es:(%bx)
     29e:	e8 e6 4d             	call   0x5087
     2a1:	83 c4 02             	add    $0x2,%sp
     2a4:	c4 5e 04             	les    0x4(%bp),%bx
     2a7:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
     2ab:	26 29 07             	sub    %ax,%es:(%bx)
     2ae:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
     2b2:	7f 03                	jg     0x2b7
     2b4:	e8 fc 4d             	call   0x50b3
     2b7:	5d                   	pop    %bp
     2b8:	c3                   	ret
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
     30d:	8b 5e              	mov    0x4(%bp),%bx
