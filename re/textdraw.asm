; textdraw @ 0x30CF len 0x80
000030cf <.data+0x30cf>:
    30cf:	55                   	push   %bp
    30d0:	8b ec                	mov    %sp,%bp
    30d2:	83 ec 02             	sub    $0x2,%sp
    30d5:	8b 46 04             	mov    0x4(%bp),%ax
    30d8:	89 46 fe             	mov    %ax,-0x2(%bp)
    30db:	eb 26                	jmp    0x3103
    30dd:	8e 46 06             	mov    0x6(%bp),%es
    30e0:	8b 5e fe             	mov    -0x2(%bp),%bx
    30e3:	26 80 3f 20          	cmpb   $0x20,%es:(%bx)
    30e7:	74 13                	je     0x30fc
    30e9:	ff 76 0c             	push   0xc(%bp)
    30ec:	26 8a 07             	mov    %es:(%bx),%al
    30ef:	50                   	push   %ax
    30f0:	ff 76 0a             	push   0xa(%bp)
    30f3:	ff 76 08             	push   0x8(%bp)
    30f6:	e8 db fe             	call   0x2fd4
    30f9:	83 c4 08             	add    $0x8,%sp
    30fc:	ff 46 fe             	incw   -0x2(%bp)
    30ff:	83 46 08 0a          	addw   $0xa,0x8(%bp)
    3103:	8e 46 06             	mov    0x6(%bp),%es
    3106:	8b 5e fe             	mov    -0x2(%bp),%bx
    3109:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
    310d:	75 ce                	jne    0x30dd
    310f:	c9                   	leave
    3110:	c3                   	ret
    3111:	55                   	push   %bp
    3112:	8b ec                	mov    %sp,%bp
    3114:	83 ec 08             	sub    $0x8,%sp
    3117:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    311c:	8b 46 fe             	mov    -0x2(%bp),%ax
    311f:	ff 46 fe             	incw   -0x2(%bp)
    3122:	c4 5e 04             	les    0x4(%bp),%bx
    3125:	03 d8                	add    %ax,%bx
    3127:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
    312b:	75 ef                	jne    0x311c
    312d:	8b 46 fe             	mov    -0x2(%bp),%ax
    3130:	ba 0a 00             	mov    $0xa,%dx
    3133:	f7 ea                	imul   %dx
    3135:	89 46 fe             	mov    %ax,-0x2(%bp)
    3138:	b8 00 01             	mov    $0x100,%ax
    313b:	2b 46 fe             	sub    -0x2(%bp),%ax
    313e:	d1 f8                	sar    $1,%ax
    3140:	89 46 fc             	mov    %ax,-0x4(%bp)
    3143:	89 46 fa             	mov    %ax,-0x6(%bp)
    3146:	eb 1a                	jmp    0x3162
    3148:	c4 5e 08             	les    0x8(%bp),%bx
    314b:	26 ff 37             	push   %es:(%bx)
    314e:	6a                 	push   $0x35
