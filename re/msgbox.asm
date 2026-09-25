; msgbox @ 0x3111 len 0x120
00003111 <.data+0x3111>:
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
    314e:	6a 35                	push   $0x35
    3150:	66 68 5a 00 6e 00    	pushl  $0x6e005a
    3156:	ff 76 fa             	push   -0x6(%bp)
    3159:	e8 9b f3             	call   0x24f7
    315c:	83 c4 0a             	add    $0xa,%sp
    315f:	ff 46 fa             	incw   -0x6(%bp)
    3162:	8b 46 fc             	mov    -0x4(%bp),%ax
    3165:	03 46 fe             	add    -0x2(%bp),%ax
    3168:	89 46 f8             	mov    %ax,-0x8(%bp)
    316b:	3b 46 fa             	cmp    -0x6(%bp),%ax
    316e:	7f d8                	jg     0x3148
    3170:	c4 5e 08             	les    0x8(%bp),%bx
    3173:	26 ff 37             	push   %es:(%bx)
    3176:	6a 55                	push   $0x55
    3178:	6a 6e                	push   $0x6e
    317a:	50                   	push   %ax
    317b:	6a 5a                	push   $0x5a
    317d:	ff 76 fc             	push   -0x4(%bp)
    3180:	e8 40 f4             	call   0x25c3
    3183:	83 c4 0c             	add    $0xc,%sp
    3186:	c4 5e 08             	les    0x8(%bp),%bx
    3189:	26 ff 37             	push   %es:(%bx)
    318c:	6a 5e                	push   $0x5e
    318e:	8b 46 fc             	mov    -0x4(%bp),%ax
    3191:	05 05 00             	add    $0x5,%ax
    3194:	50                   	push   %ax
    3195:	66 ff 76 04          	pushl  0x4(%bp)
    3199:	e8 33 ff             	call   0x30cf
    319c:	83 c4 0a             	add    $0xa,%sp
    319f:	c7 46 fa 3f 00       	movw   $0x3f,-0x6(%bp)
    31a4:	eb 1a                	jmp    0x31c0
    31a6:	c4 5e 08             	les    0x8(%bp),%bx
    31a9:	26 ff 37             	push   %es:(%bx)
    31ac:	6a 35                	push   $0x35
    31ae:	66 68 73 00 87 00    	pushl  $0x870073
    31b4:	ff 76 fa             	push   -0x6(%bp)
    31b7:	e8 3d f3             	call   0x24f7
    31ba:	83 c4 0a             	add    $0xa,%sp
    31bd:	ff 46 fa             	incw   -0x6(%bp)
    31c0:	81 7e fa c1 00       	cmpw   $0xc1,-0x6(%bp)
    31c5:	7c df                	jl     0x31a6
    31c7:	c4 5e 08             	les    0x8(%bp),%bx
    31ca:	26 ff 37             	push   %es:(%bx)
    31cd:	6a 55                	push   $0x55
    31cf:	66 68 c1 00 87 00    	pushl  $0x8700c1
    31d5:	66 68 3f 00 73 00    	pushl  $0x73003f
    31db:	e8 e5 f3             	call   0x25c3
    31de:	83 c4 0c             	add    $0xc,%sp
    31e1:	c4 5e 08             	les    0x8(%bp),%bx
    31e4:	26 ff 37             	push   %es:(%bx)
    31e7:	66 68 44 00 77 00    	pushl  $0x770044
    31ed:	1e                   	push   %ds
    31ee:	68 06 02             	push   $0x206
    31f1:	e8 db fe             	call   0x30cf
    31f4:	83 c4 0a             	add    $0xa,%sp
    31f7:	66 ff 76 08          	pushl  0x8(%bp)
    31fb:	e8 34 d1             	call   0x332
    31fe:	83 c4 04             	add    $0x4,%sp
    3201:	80 3e ae 00 9c       	cmpb   $0x9c,0xae
    3206:	75 f9                	jne    0x3201
    3208:	66 ff 76 08          	pushl  0x8(%bp)
    320c:	e8 23 d1             	call   0x332
    320f:	83 c4 04             	add    $0x4,%sp
    3212:	c9                   	leave
    3213:	c3                   	ret
    3214:	55                   	push   %bp
    3215:	8b ec                	mov    %sp,%bp
    3217:	83 ec 10             	sub    $0x10,%sp
    321a:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    321f:	b8 6e 03             	mov    $0x36e,%ax
    3222:	03 46 06             	add    0x6(%bp),%ax
    3225:	03 46 08             	add    0x8(%bp),%ax
    3228:	05 02 00             	add    $0x2,%ax
    322b:	89 46 fa             	mov    %ax,-0x6(%bp)
    322e:	c7 46 f8         	movw   $0x0,-0x8(%bp)
