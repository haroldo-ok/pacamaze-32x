; video @ 0x22F4 len 0x240
000022f4 <.data+0x22f4>:
    22f4:	55                   	push   %bp
    22f5:	8b ec                	mov    %sp,%bp
    22f7:	66 0f bf 46 08       	movswl 0x8(%bp),%eax
    22fc:	c4 5e 04             	les    0x4(%bp),%bx
    22ff:	66 26 89 47 02       	mov    %eax,%es:0x2(%bx)
    2304:	66 0f bf 46 0a       	movswl 0xa(%bp),%eax
    2309:	66 26 89 47 06       	mov    %eax,%es:0x6(%bx)
    230e:	26 c7 47 1e 01 00    	movw   $0x1,%es:0x1e(%bx)
    2314:	5d                   	pop    %bp
    2315:	c3                   	ret
    2316:	55                   	push   %bp
    2317:	8b ec                	mov    %sp,%bp
    2319:	b0 62                	mov    $0x62,%al
    231b:	5d                   	pop    %bp
    231c:	c3                   	ret
    231d:	55                   	push   %bp
    231e:	8b ec                	mov    %sp,%bp
    2320:	8b 5e 04             	mov    0x4(%bp),%bx
    2323:	ba d4 03             	mov    $0x3d4,%dx
    2326:	b0 0c                	mov    $0xc,%al
    2328:	8a e7                	mov    %bh,%ah
    232a:	ef                   	out    %ax,(%dx)
    232b:	fe c0                	inc    %al
    232d:	8a e3                	mov    %bl,%ah
    232f:	ef                   	out    %ax,(%dx)
    2330:	5d                   	pop    %bp
    2331:	c3                   	ret
    2332:	55                   	push   %bp
    2333:	8b ec                	mov    %sp,%bp
    2335:	b4 10                	mov    $0x10,%ah
    2337:	b0 10                	mov    $0x10,%al
    2339:	8b 5e 04             	mov    0x4(%bp),%bx
    233c:	8a 76 06             	mov    0x6(%bp),%dh
    233f:	8a 6e 08             	mov    0x8(%bp),%ch
    2342:	8a 4e 0a             	mov    0xa(%bp),%cl
    2345:	cd 10                	int    $0x10
    2347:	5d                   	pop    %bp
    2348:	c3                   	ret
    2349:	ba da 03             	mov    $0x3da,%dx
    234c:	ec                   	in     (%dx),%al
    234d:	ba c0 03             	mov    $0x3c0,%dx
    2350:	b0 00                	mov    $0x0,%al
    2352:	ee                   	out    %al,(%dx)
    2353:	c3                   	ret
    2354:	ba da 03             	mov    $0x3da,%dx
    2357:	ec                   	in     (%dx),%al
    2358:	ba c0 03             	mov    $0x3c0,%dx
    235b:	b0 20                	mov    $0x20,%al
    235d:	ee                   	out    %al,(%dx)
    235e:	c3                   	ret
    235f:	55                   	push   %bp
    2360:	8b ec                	mov    %sp,%bp
    2362:	8b 56 04             	mov    0x4(%bp),%dx
    2365:	8b 46 06             	mov    0x6(%bp),%ax
    2368:	ef                   	out    %ax,(%dx)
    2369:	5d                   	pop    %bp
    236a:	c3                   	ret
    236b:	55                   	push   %bp
    236c:	8b ec                	mov    %sp,%bp
    236e:	8b 56 04             	mov    0x4(%bp),%dx
    2371:	8a 46 06             	mov    0x6(%bp),%al
    2374:	ee                   	out    %al,(%dx)
    2375:	5d                   	pop    %bp
    2376:	c3                   	ret
    2377:	c7 06 f4 7e 00 5f    	movw   $0x5f00,0x7ef4
    237d:	c7 06 f6 7e 01 4f    	movw   $0x4f01,0x7ef6
    2383:	c7 06 f8 7e 02 50    	movw   $0x5002,0x7ef8
    2389:	c7 06 fa 7e 03 82    	movw   $0x8203,0x7efa
    238f:	c7 06 fc 7e 04 54    	movw   $0x5404,0x7efc
    2395:	c7 06 fe 7e 05 80    	movw   $0x8005,0x7efe
    239b:	c7 06 00 7f 06 bf    	movw   $0xbf06,0x7f00
    23a1:	c7 06 02 7f 07 1f    	movw   $0x1f07,0x7f02
    23a7:	c7 06 04 7f 10 9c    	movw   $0x9c10,0x7f04
    23ad:	c7 06 06 7f 11 8e    	movw   $0x8e11,0x7f06
    23b3:	c7 06 08 7f 12 8f    	movw   $0x8f12,0x7f08
    23b9:	c7 06 0a 7f 15 96    	movw   $0x9615,0x7f0a
    23bf:	c7 06 0c 7f 16 b9    	movw   $0xb916,0x7f0c
    23c5:	c7 06 0e 7f 09 41    	movw   $0x4109,0x7f0e
    23cb:	c7 06 10 7f 14 00    	movw   $0x14,0x7f10
    23d1:	c7 06 12 7f 17 e3    	movw   $0xe317,0x7f12
    23d7:	c3                   	ret
    23d8:	55                   	push   %bp
    23d9:	8b ec                	mov    %sp,%bp
    23db:	83 ec 04             	sub    $0x4,%sp
    23de:	57                   	push   %di
    23df:	e8 95 ff             	call   0x2377
    23e2:	b8 13 00             	mov    $0x13,%ax
    23e5:	cd 10                	int    $0x10
    23e7:	e8 5f ff             	call   0x2349
    23ea:	66 68 c4 03 04 06    	pushl  $0x60403c4
    23f0:	e8 6c ff             	call   0x235f
    23f3:	83 c4 04             	add    $0x4,%sp
    23f6:	66 68 c4 03 00 01    	pushl  $0x10003c4
    23fc:	e8 60 ff             	call   0x235f
    23ff:	83 c4 04             	add    $0x4,%sp
    2402:	6a 63                	push   $0x63
    2404:	68 c2 03             	push   $0x3c2
    2407:	e8 61 ff             	call   0x236b
    240a:	83 c4 04             	add    $0x4,%sp
    240d:	66 68 c4 03 00 03    	pushl  $0x30003c4
    2413:	e8 49 ff             	call   0x235f
    2416:	83 c4 04             	add    $0x4,%sp
    2419:	ba d4 03             	mov    $0x3d4,%dx
    241c:	b0 11                	mov    $0x11,%al
    241e:	ee                   	out    %al,(%dx)
    241f:	42                   	inc    %dx
    2420:	ec                   	in     (%dx),%al
    2421:	24 7f                	and    $0x7f,%al
    2423:	ee                   	out    %al,(%dx)
    2424:	c6 46 ff 00          	movb   $0x0,-0x1(%bp)
    2428:	8a 46 ff             	mov    -0x1(%bp),%al
    242b:	b4 00                	mov    $0x0,%ah
    242d:	d1 e0                	shl    $1,%ax
    242f:	8b d8                	mov    %ax,%bx
    2431:	8b 87 f4 7e          	mov    0x7ef4(%bx),%ax
    2435:	89 46 fc             	mov    %ax,-0x4(%bp)
    2438:	50                   	push   %ax
    2439:	68 d4 03             	push   $0x3d4
    243c:	e8 20 ff             	call   0x235f
    243f:	83 c4 04             	add    $0x4,%sp
    2442:	fe 46 ff             	incb   -0x1(%bp)
    2445:	80 7e ff 10          	cmpb   $0x10,-0x1(%bp)
    2449:	72 dd                	jb     0x2428
    244b:	b0 13                	mov    $0x13,%al
    244d:	b4 28                	mov    $0x28,%ah
    244f:	ba d4 03             	mov    $0x3d4,%dx
    2452:	ef                   	out    %ax,(%dx)
    2453:	ba c4 03             	mov    $0x3c4,%dx
    2456:	b8 02 0f             	mov    $0xf02,%ax
    2459:	ef                   	out    %ax,(%dx)
    245a:	b8 00 a0             	mov    $0xa000,%ax
    245d:	8e c0                	mov    %ax,%es
    245f:	bf 00 00             	mov    $0x0,%di
    2462:	b8 00 00             	mov    $0x0,%ax
    2465:	b9 00 80             	mov    $0x8000,%cx
    2468:	f3 ab                	rep stos %ax,%es:(%di)
    246a:	e8 e7 fe             	call   0x2354
    246d:	5f                   	pop    %di
    246e:	c9                   	leave
    246f:	c3                   	ret
    2470:	b8 03 00             	mov    $0x3,%ax
    2473:	cd 10                	int    $0x10
    2475:	c3                   	ret
    2476:	55                   	push   %bp
    2477:	8b ec                	mov    %sp,%bp
    2479:	83 ec 02             	sub    $0x2,%sp
    247c:	8a 46 04             	mov    0x4(%bp),%al
    247f:	b4 00                	mov    $0x0,%ah
    2481:	ba 80 3e             	mov    $0x3e80,%dx
    2484:	f7 ea                	imul   %dx
    2486:	89 46 fe             	mov    %ax,-0x2(%bp)
    2489:	50                   	push   %ax
    248a:	e8 90 fe             	call   0x231d
    248d:	83 c4 02             	add    $0x2,%sp
    2490:	c9                   	leave
    2491:	c3                   	ret
    2492:	55                   	push   %bp
    2493:	8b ec                	mov    %sp,%bp
    2495:	57                   	push   %di
    2496:	b8 02 0f             	mov    $0xf02,%ax
    2499:	ba c4 03             	mov    $0x3c4,%dx
    249c:	ef                   	out    %ax,(%dx)
    249d:	8b 46 06             	mov    0x6(%bp),%ax
    24a0:	05 00 a0             	add    $0xa000,%ax
    24a3:	8e c0                	mov    %ax,%es
    24a5:	8a 46 04             	mov    0x4(%bp),%al
    24a8:	8a e0                	mov    %al,%ah
    24aa:	b9 40 1f             	mov    $0x1f40,%cx
    24ad:	bf 00 00             	mov    $0x0,%di
    24b0:	f3 ab                	rep stos %ax,%es:(%di)
    24b2:	5f                   	pop    %di
    24b3:	5d                   	pop    %bp
    24b4:	c3                   	ret
    24b5:	ba da 03             	mov    $0x3da,%dx
    24b8:	ec                   	in     (%dx),%al
    24b9:	b4 00                	mov    $0x0,%ah
    24bb:	25 08 00             	and    $0x8,%ax
    24be:	c3                   	ret
    24bf:	55                   	push   %bp
    24c0:	8b ec                	mov    %sp,%bp
    24c2:	8b 46 0a             	mov    0xa(%bp),%ax
    24c5:	05 00 a0             	add    $0xa000,%ax
    24c8:	8e c0                	mov    %ax,%es
    24ca:	b4 01                	mov    $0x1,%ah
    24cc:	8b 4e 04             	mov    0x4(%bp),%cx
    24cf:	83 e1 03             	and    $0x3,%cx
    24d2:	d2 e4                	shl    %cl,%ah
    24d4:	b0 02                	mov    $0x2,%al
    24d6:	ba c4 03             	mov    $0x3c4,%dx
    24d9:	ef                   	out    %ax,(%dx)
    24da:	8b 4e 04             	mov    0x4(%bp),%cx
    24dd:	c1 e9 02             	shr    $0x2,%cx
    24e0:	8b 46 06             	mov    0x6(%bp),%ax
    24e3:	8b d8                	mov    %ax,%bx
    24e5:	c1 e0 06             	shl    $0x6,%ax
    24e8:	c1 e3 04             	shl    $0x4,%bx
    24eb:	03 d8                	add    %ax,%bx
    24ed:	03 d9                	add    %cx,%bx
    24ef:	8a 46 08             	mov    0x8(%bp),%al
    24f2:	26 88 07             	mov    %al,%es:(%bx)
    24f5:	5d                   	pop    %bp
    24f6:	c3                   	ret
    24f7:	55                   	push   %bp
    24f8:	8b ec                	mov    %sp,%bp
    24fa:	8b 46 0c             	mov    0xc(%bp),%ax
    24fd:	05 00 a0             	add    $0xa000,%ax
    2500:	8e c0                	mov    %ax,%es
    2502:	b4 01                	mov    $0x1,%ah
    2504:	8b 4e 04             	mov    0x4(%bp),%cx
    2507:	83 e1 03             	and    $0x3,%cx
    250a:	d2 e4                	shl    %cl,%ah
    250c:	b0 02                	mov    $0x2,%al
    250e:	ba c4 03             	mov    $0x3c4,%dx
    2511:	ef                   	out    %ax,(%dx)
    2512:	8b 4e 04             	mov    0x4(%bp),%cx
    2515:	c1 e9 02             	shr    $0x2,%cx
    2518:	8b 46 06             	mov    0x6(%bp),%ax
    251b:	8b d8                	mov    %ax,%bx
    251d:	c1 e0 06             	shl    $0x6,%ax
    2520:	c1 e3 04             	shl    $0x4,%bx
    2523:	03 d8                	add    %ax,%bx
    2525:	03 d9                	add    %cx,%bx
    2527:	8a 46 0a             	mov    0xa(%bp),%al
    252a:	8b 4e 08             	mov    0x8(%bp),%cx
    252d:	2b 4e 06             	sub    0x6(%bp),%cx
    2530:	41                   	inc    %cx
    2531:	26 88 07             	mov    %al,%es:(%bx)
