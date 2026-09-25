; readmap @ 0x119D len 0x150
0000119d <.data+0x119d>:
    119d:	55                   	push   %bp
    119e:	8b ec                	mov    %sp,%bp
    11a0:	81 ec 20 04          	sub    $0x420,%sp
    11a4:	ff 76 04             	push   0x4(%bp)
    11a7:	1e                   	push   %ds
    11a8:	68 08 01             	push   $0x108
    11ab:	16                   	push   %ss
    11ac:	8d 46 e0             	lea    -0x20(%bp),%ax
    11af:	50                   	push   %ax
    11b0:	e8 8f 44             	call   0x5642
    11b3:	83 c4 0a             	add    $0xa,%sp
    11b6:	66 68 00 04 00 00    	pushl  $0x400
    11bc:	16                   	push   %ss
    11bd:	8d 86 e0 fb          	lea    -0x420(%bp),%ax
    11c1:	50                   	push   %ax
    11c2:	16                   	push   %ss
    11c3:	8d 46 e0             	lea    -0x20(%bp),%ax
    11c6:	50                   	push   %ax
    11c7:	e8 63 1d             	call   0x2f2d
    11ca:	83 c4 0c             	add    $0xc,%sp
    11cd:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    11d2:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    11d7:	8b 46 fc             	mov    -0x4(%bp),%ax
    11da:	3b 46 06             	cmp    0x6(%bp),%ax
    11dd:	7d 62                	jge    0x1241
    11df:	c7 46 f4 00 00       	movw   $0x0,-0xc(%bp)
    11e4:	8b 46 f4             	mov    -0xc(%bp),%ax
    11e7:	3b 46 08             	cmp    0x8(%bp),%ax
    11ea:	7d 4a                	jge    0x1236
    11ec:	8b 5e fe             	mov    -0x2(%bp),%bx
    11ef:	ff 46 fe             	incw   -0x2(%bp)
    11f2:	8d 86 e0 fb          	lea    -0x420(%bp),%ax
    11f6:	03 d8                	add    %ax,%bx
    11f8:	36 80 3f 00          	cmpb   $0x0,%ss:(%bx)
    11fc:	74 1d                	je     0x121b
    11fe:	6a 04                	push   $0x4
    1200:	e8 52 0d             	call   0x1f55
    1203:	83 c4 02             	add    $0x2,%sp
    1206:	fe c0                	inc    %al
    1208:	50                   	push   %ax
    1209:	8b 46 f4             	mov    -0xc(%bp),%ax
    120c:	f7 6e 06             	imulw  0x6(%bp)
    120f:	03 46 fc             	add    -0x4(%bp),%ax
    1212:	8b d8                	mov    %ax,%bx
    1214:	58                   	pop    %ax
    1215:	88 87 b3 69          	mov    %al,0x69b3(%bx)
    1219:	eb 10                	jmp    0x122b
    121b:	8b 46 f4             	mov    -0xc(%bp),%ax
    121e:	f7 6e 06             	imulw  0x6(%bp)
    1221:	03 46 fc             	add    -0x4(%bp),%ax
    1224:	8b d8                	mov    %ax,%bx
    1226:	c6 87 b3 69 00       	movb   $0x0,0x69b3(%bx)
    122b:	ff 46 f4             	incw   -0xc(%bp)
    122e:	8b 46 f4             	mov    -0xc(%bp),%ax
    1231:	3b 46 08             	cmp    0x8(%bp),%ax
    1234:	7c b6                	jl     0x11ec
    1236:	ff 46 fc             	incw   -0x4(%bp)
    1239:	8b 46 fc             	mov    -0x4(%bp),%ax
    123c:	3b 46 06             	cmp    0x6(%bp),%ax
    123f:	7c 9e                	jl     0x11df
    1241:	c7 46 fa 00 00       	movw   $0x0,-0x6(%bp)
    1246:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    124b:	c7 46 f8 b3 6d       	movw   $0x6db3,-0x8(%bp)
    1250:	8b 5e fc             	mov    -0x4(%bp),%bx
    1253:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    1258:	74 09                	je     0x1263
    125a:	8b 5e f8             	mov    -0x8(%bp),%bx
    125d:	c7 07 00 28          	movw   $0x2800,(%bx)
    1261:	eb 0a                	jmp    0x126d
    1263:	ff 46 fa             	incw   -0x6(%bp)
    1266:	8b 5e f8             	mov    -0x8(%bp),%bx
    1269:	c7 07 00 24          	movw   $0x2400,(%bx)
    126d:	83 46 f8 02          	addw   $0x2,-0x8(%bp)
    1271:	ff 46 fc             	incw   -0x4(%bp)
    1274:	81 7e f8 b3 75       	cmpw   $0x75b3,-0x8(%bp)
    1279:	75 d5                	jne    0x1250
    127b:	8b 5e 04             	mov    0x4(%bp),%bx
    127e:	d1 e3                	shl    $1,%bx
    1280:	d1 e3                	shl    $1,%bx
    1282:	8b 87 94 00          	mov    0x94(%bx),%ax
    1286:	a3 df 7e             	mov    %ax,0x7edf
    1289:	8b 5e 04             	mov    0x4(%bp),%bx
    128c:	d1 e3                	shl    $1,%bx
    128e:	d1 e3                	shl    $1,%bx
    1290:	8b 87 96 00          	mov    0x96(%bx),%ax
    1294:	a3 e1 7e             	mov    %ax,0x7ee1
    1297:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    129c:	c7 46 f6 b3 3d       	movw   $0x3db3,-0xa(%bp)
    12a1:	8b 46 fc             	mov    -0x4(%bp),%ax
    12a4:	40                   	inc    %ax
    12a5:	50                   	push   %ax
    12a6:	8b 46 04             	mov    0x4(%bp),%ax
    12a9:	25 01 00             	and    $0x1,%ax
    12ac:	40                   	inc    %ax
    12ad:	50                   	push   %ax
    12ae:	1e                   	push   %ds
    12af:	68 13 01             	push   $0x113
    12b2:	16                   	push   %ss
    12b3:	8d 46 e0             	lea    -0x20(%bp),%ax
    12b6:	50                   	push   %ax
    12b7:	e8 88 43             	call   0x5642
    12ba:	83 c4 0c             	add    $0xc,%sp
    12bd:	66 68 00 04 00 00    	pushl  $0x400
    12c3:	1e                   	push   %ds
    12c4:	ff 76 f6             	push   -0xa(%bp)
    12c7:	16                   	push   %ss
    12c8:	8d 46 e0             	lea    -0x20(%bp),%ax
    12cb:	50                   	push   %ax
    12cc:	e8 5e 1c             	call   0x2f2d
    12cf:	83 c4 0c             	add    $0xc,%sp
    12d2:	81 46 f6 00 04       	addw   $0x400,-0xa(%bp)
    12d7:	ff 46 fc             	incw   -0x4(%bp)
    12da:	81 7e f6 b3 4d       	cmpw   $0x4db3,-0xa(%bp)
    12df:	75 c0                	jne    0x12a1
    12e1:	8b 46 fa             	mov    -0x6(%bp),%ax
    12e4:	c9                   	leave
    12e5:	c3                   	ret
    12e6:	55                   	push   %bp
    12e7:	8b ec                	mov    %sp,%bp
    12e9:	81 ec 80 00          	sub    $0x80,%sp
