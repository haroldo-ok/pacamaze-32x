; playlevel @ 0x12E6 len 0x730
000012e6 <.data+0x12e6>:
    12e6:	55                   	push   %bp
    12e7:	8b ec                	mov    %sp,%bp
    12e9:	81 ec 80 00          	sub    $0x80,%sp
    12ed:	56                   	push   %si
    12ee:	57                   	push   %di
    12ef:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    12f4:	c7 46 fa 00 00       	movw   $0x0,-0x6(%bp)
    12f9:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
    12fe:	c7 46 f6 00 00       	movw   $0x0,-0xa(%bp)
    1303:	c7 46 f4 00 00       	movw   $0x0,-0xc(%bp)
    1308:	be c5 00             	mov    $0xc5,%si
    130b:	8d 7e a8             	lea    -0x58(%bp),%di
    130e:	16                   	push   %ss
    130f:	07                   	pop    %es
    1310:	b9 0c 00             	mov    $0xc,%cx
    1313:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
    1315:	a4                   	movsb  %ds:(%si),%es:(%di)
    1316:	66 68 20 00 20 00    	pushl  $0x200020
    131c:	ff 76 f4             	push   -0xc(%bp)
    131f:	e8 7b fe             	call   0x119d
    1322:	83 c4 06             	add    $0x6,%sp
    1325:	89 46 f2             	mov    %ax,-0xe(%bp)
    1328:	16                   	push   %ss
    1329:	8d 46 e6             	lea    -0x1a(%bp),%ax
    132c:	50                   	push   %ax
    132d:	e8 66 0c             	call   0x1f96
    1330:	83 c4 04             	add    $0x4,%sp
    1333:	16                   	push   %ss
    1334:	8d 46 dc             	lea    -0x24(%bp),%ax
    1337:	50                   	push   %ax
    1338:	e8 8b 0c             	call   0x1fc6
    133b:	83 c4 04             	add    $0x4,%sp
    133e:	8b 46 f4             	mov    -0xc(%bp),%ax
    1341:	ba 05 00             	mov    $0x5,%dx
    1344:	f7 ea                	imul   %dx
    1346:	8d 56 a8             	lea    -0x58(%bp),%dx
    1349:	03 c2                	add    %dx,%ax
    134b:	8b d8                	mov    %ax,%bx
    134d:	36 8a 07             	mov    %ss:(%bx),%al
    1350:	b4 00                	mov    $0x0,%ah
    1352:	05 d0 ff             	add    $0xffd0,%ax
    1355:	50                   	push   %ax
    1356:	83 ec 08             	sub    $0x8,%sp
    1359:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    135f:	66 89 46 cc          	mov    %eax,-0x34(%bp)
    1363:	66 50                	push   %eax
    1365:	66 50                	push   %eax
    1367:	16                   	push   %ss
    1368:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    136c:	50                   	push   %ax
    136d:	e8 49 ef             	call   0x2b9
    1370:	83 c4 0c             	add    $0xc,%sp
    1373:	66 68 00 00 05 00    	pushl  $0x50000
    1379:	6a 00                	push   $0x0
    137b:	e8 7d 0c             	call   0x1ffb
    137e:	83 c4 10             	add    $0x10,%sp
    1381:	89 16 e0 00          	mov    %dx,0xe0
    1385:	a3 de 00             	mov    %ax,0xde
    1388:	8b 46 f4             	mov    -0xc(%bp),%ax
    138b:	ba 05 00             	mov    $0x5,%dx
    138e:	f7 ea                	imul   %dx
    1390:	8d 56 a9             	lea    -0x57(%bp),%dx
    1393:	03 c2                	add    %dx,%ax
    1395:	8b d8                	mov    %ax,%bx
    1397:	36 8a 07             	mov    %ss:(%bx),%al
    139a:	b4 00                	mov    $0x0,%ah
    139c:	05 d0 ff             	add    $0xffd0,%ax
    139f:	50                   	push   %ax
    13a0:	83 ec 08             	sub    $0x8,%sp
    13a3:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    13a9:	66 50                	push   %eax
    13ab:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    13b1:	66 50                	push   %eax
    13b3:	16                   	push   %ss
    13b4:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    13b8:	50                   	push   %ax
    13b9:	e8 fd ee             	call   0x2b9
    13bc:	83 c4 0c             	add    $0xc,%sp
    13bf:	66 68 00 00 05 00    	pushl  $0x50000
    13c5:	6a 00                	push   $0x0
    13c7:	e8 31 0c             	call   0x1ffb
    13ca:	83 c4 10             	add    $0x10,%sp
    13cd:	89 16 e4 00          	mov    %dx,0xe4
    13d1:	a3 e2 00             	mov    %ax,0xe2
    13d4:	8b 46 f4             	mov    -0xc(%bp),%ax
    13d7:	ba 05 00             	mov    $0x5,%dx
    13da:	f7 ea                	imul   %dx
    13dc:	8d 56 aa             	lea    -0x56(%bp),%dx
    13df:	03 c2                	add    %dx,%ax
    13e1:	8b d8                	mov    %ax,%bx
    13e3:	36 8a 07             	mov    %ss:(%bx),%al
    13e6:	b4 00                	mov    $0x0,%ah
    13e8:	05 d0 ff             	add    $0xffd0,%ax
    13eb:	50                   	push   %ax
    13ec:	83 ec 08             	sub    $0x8,%sp
    13ef:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    13f5:	66 50                	push   %eax
    13f7:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    13fd:	66 50                	push   %eax
    13ff:	16                   	push   %ss
    1400:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    1404:	50                   	push   %ax
    1405:	e8 b1 ee             	call   0x2b9
    1408:	83 c4 0c             	add    $0xc,%sp
    140b:	66 68 00 00 05 00    	pushl  $0x50000
    1411:	6a 00                	push   $0x0
    1413:	e8 e5 0b             	call   0x1ffb
    1416:	83 c4 10             	add    $0x10,%sp
    1419:	89 16 e8 00          	mov    %dx,0xe8
    141d:	a3 e6 00             	mov    %ax,0xe6
    1420:	8b 46 f4             	mov    -0xc(%bp),%ax
    1423:	ba 05 00             	mov    $0x5,%dx
    1426:	f7 ea                	imul   %dx
    1428:	8d 56 ab             	lea    -0x55(%bp),%dx
    142b:	03 c2                	add    %dx,%ax
    142d:	8b d8                	mov    %ax,%bx
    142f:	36 8a 07             	mov    %ss:(%bx),%al
    1432:	b4 00                	mov    $0x0,%ah
    1434:	05 d0 ff             	add    $0xffd0,%ax
    1437:	50                   	push   %ax
    1438:	83 ec 08             	sub    $0x8,%sp
    143b:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    1441:	66 89 46 c8          	mov    %eax,-0x38(%bp)
    1445:	66 50                	push   %eax
    1447:	66 50                	push   %eax
    1449:	16                   	push   %ss
    144a:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    144e:	50                   	push   %ax
    144f:	e8 67 ee             	call   0x2b9
    1452:	83 c4 0c             	add    $0xc,%sp
    1455:	66 68 00 00 05 00    	pushl  $0x50000
    145b:	6a 00                	push   $0x0
    145d:	e8 9b 0b             	call   0x1ffb
    1460:	83 c4 10             	add    $0x10,%sp
    1463:	89 16 ec 00          	mov    %dx,0xec
    1467:	a3 ea 00             	mov    %ax,0xea
    146a:	be de 00             	mov    $0xde,%si
    146d:	8d 7e 98             	lea    -0x68(%bp),%di
    1470:	16                   	push   %ss
    1471:	07                   	pop    %es
    1472:	b9 08 00             	mov    $0x8,%cx
    1475:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
    1477:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    147c:	8b 5e fc             	mov    -0x4(%bp),%bx
    147f:	c1 e3 02             	shl    $0x2,%bx
    1482:	8d 46 98             	lea    -0x68(%bp),%ax
    1485:	03 d8                	add    %ax,%bx
    1487:	66 36 ff 37          	pushl  %ss:(%bx)
    148b:	16                   	push   %ss
    148c:	8d 46 dc             	lea    -0x24(%bp),%ax
    148f:	50                   	push   %ax
    1490:	e8 c8 0c             	call   0x215b
    1493:	83 c4 08             	add    $0x8,%sp
    1496:	ff 46 fc             	incw   -0x4(%bp)
    1499:	83 7e fc 04          	cmpw   $0x4,-0x4(%bp)
    149d:	7c dd                	jl     0x147c
    149f:	16                   	push   %ss
    14a0:	8d 46 dc             	lea    -0x24(%bp),%ax
    14a3:	50                   	push   %ax
    14a4:	16                   	push   %ss
    14a5:	8d 46 d4             	lea    -0x2c(%bp),%ax
    14a8:	50                   	push   %ax
    14a9:	e8 c7 09             	call   0x1e73
    14ac:	83 c4 08             	add    $0x8,%sp
    14af:	16                   	push   %ss
    14b0:	8d 46 d4             	lea    -0x2c(%bp),%ax
    14b3:	50                   	push   %ax
    14b4:	e8 7a 0a             	call   0x1f31
    14b7:	83 c4 04             	add    $0x4,%sp
    14ba:	c7 46 d2 00 00       	movw   $0x0,-0x2e(%bp)
    14bf:	e9 eb 04             	jmp    0x19ad
    14c2:	83 7e f8 00          	cmpw   $0x0,-0x8(%bp)
    14c6:	74 03                	je     0x14cb
    14c8:	e9 09 01             	jmp    0x15d4
    14cb:	6a 00                	push   $0x0
    14cd:	83 ec 08             	sub    $0x8,%sp
    14d0:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    14d6:	66 89 46 cc          	mov    %eax,-0x34(%bp)
    14da:	66 50                	push   %eax
    14dc:	66 50                	push   %eax
    14de:	16                   	push   %ss
    14df:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    14e3:	50                   	push   %ax
    14e4:	e8 d2 ed             	call   0x2b9
    14e7:	83 c4 0c             	add    $0xc,%sp
    14ea:	66 68 00 00 06 00    	pushl  $0x60000
    14f0:	6a 00                	push   $0x0
    14f2:	e8 6d 0b             	call   0x2062
    14f5:	83 c4 10             	add    $0x10,%sp
    14f8:	89 16 f0 00          	mov    %dx,0xf0
    14fc:	a3 ee 00             	mov    %ax,0xee
    14ff:	6a 00                	push   $0x0
    1501:	83 ec 08             	sub    $0x8,%sp
    1504:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    150a:	66 50                	push   %eax
    150c:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    1512:	66 50                	push   %eax
    1514:	16                   	push   %ss
    1515:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    1519:	50                   	push   %ax
    151a:	e8 9c ed             	call   0x2b9
    151d:	83 c4 0c             	add    $0xc,%sp
    1520:	66 68 00 00 06 00    	pushl  $0x60000
    1526:	6a 00                	push   $0x0
    1528:	e8 37 0b             	call   0x2062
    152b:	83 c4 10             	add    $0x10,%sp
    152e:	89 16 f4 00          	mov    %dx,0xf4
    1532:	a3 f2 00             	mov    %ax,0xf2
    1535:	6a 00                	push   $0x0
    1537:	83 ec 08             	sub    $0x8,%sp
    153a:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    1540:	66 50                	push   %eax
    1542:	66 0f bf 06 df 7e    	movswl 0x7edf,%eax
    1548:	66 50                	push   %eax
    154a:	16                   	push   %ss
    154b:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    154f:	50                   	push   %ax
    1550:	e8 66 ed             	call   0x2b9
    1553:	83 c4 0c             	add    $0xc,%sp
    1556:	66 68 00 00 06 00    	pushl  $0x60000
    155c:	6a 00                	push   $0x0
    155e:	e8 01 0b             	call   0x2062
    1561:	83 c4 10             	add    $0x10,%sp
    1564:	89 16 f8 00          	mov    %dx,0xf8
    1568:	a3 f6 00             	mov    %ax,0xf6
    156b:	6a 00                	push   $0x0
    156d:	83 ec 08             	sub    $0x8,%sp
    1570:	66 0f bf 06 e1 7e    	movswl 0x7ee1,%eax
    1576:	66 89 46 c8          	mov    %eax,-0x38(%bp)
    157a:	66 50                	push   %eax
    157c:	66 50                	push   %eax
    157e:	16                   	push   %ss
    157f:	8d 86 72 ff          	lea    -0x8e(%bp),%ax
    1583:	50                   	push   %ax
    1584:	e8 32 ed             	call   0x2b9
    1587:	83 c4 0c             	add    $0xc,%sp
    158a:	66 68 00 00 06 00    	pushl  $0x60000
    1590:	6a 00                	push   $0x0
    1592:	e8 cd 0a             	call   0x2062
    1595:	83 c4 10             	add    $0x10,%sp
    1598:	89 16 fc 00          	mov    %dx,0xfc
    159c:	a3 fa 00             	mov    %ax,0xfa
    159f:	be ee 00             	mov    $0xee,%si
    15a2:	8d 7e 88             	lea    -0x78(%bp),%di
    15a5:	16                   	push   %ss
    15a6:	07                   	pop    %es
    15a7:	b9 08 00             	mov    $0x8,%cx
    15aa:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
    15ac:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    15b1:	8b 5e fc             	mov    -0x4(%bp),%bx
    15b4:	c1 e3 02             	shl    $0x2,%bx
    15b7:	8d 46 88             	lea    -0x78(%bp),%ax
    15ba:	03 d8                	add    %ax,%bx
    15bc:	66 36 ff 37          	pushl  %ss:(%bx)
    15c0:	16                   	push   %ss
    15c1:	8d 46 dc             	lea    -0x24(%bp),%ax
    15c4:	50                   	push   %ax
    15c5:	e8 93 0b             	call   0x215b
    15c8:	83 c4 08             	add    $0x8,%sp
    15cb:	ff 46 fc             	incw   -0x4(%bp)
    15ce:	83 7e fc 04          	cmpw   $0x4,-0x4(%bp)
    15d2:	7c dd                	jl     0x15b1
    15d4:	66 c7 46 ea d0 01 00 	movl   $0x1d0,-0x16(%bp)
    15db:	00 
    15dc:	66 c7 46 ee f0 01 00 	movl   $0x1f0,-0x12(%bp)
    15e3:	00 
    15e4:	c7 46 fc 00 01       	movw   $0x100,-0x4(%bp)
    15e9:	c6 06 b3 00 00       	movb   $0x0,0xb3
    15ee:	c7 06 a8 00 01 00    	movw   $0x1,0xa8
    15f4:	c7 46 c4 00 00       	movw   $0x0,-0x3c(%bp)
    15f9:	ff 76 fc             	push   -0x4(%bp)
    15fc:	8d 46 ea             	lea    -0x16(%bp),%ax
    15ff:	8c d2                	mov    %ss,%dx
    1601:	b9 08 00             	mov    $0x8,%cx
    1604:	e8 f7 2b             	call   0x41fe
    1607:	16                   	push   %ss
    1608:	8d 46 ea             	lea    -0x16(%bp),%ax
    160b:	50                   	push   %ax
    160c:	e8 54 f4             	call   0xa63
    160f:	83 c4 0e             	add    $0xe,%sp
    1612:	16                   	push   %ss
    1613:	8d 46 fc             	lea    -0x4(%bp),%ax
    1616:	50                   	push   %ax
    1617:	e8 b7 f5             	call   0xbd1
    161a:	83 c4 04             	add    $0x4,%sp
    161d:	a1 ac 00             	mov    0xac,%ax
    1620:	03 46 c4             	add    -0x3c(%bp),%ax
    1623:	c1 f8 02             	sar    $0x2,%ax
    1626:	89 46 c6             	mov    %ax,-0x3a(%bp)
    1629:	a1 ac 00             	mov    0xac,%ax
    162c:	03 46 c4             	add    -0x3c(%bp),%ax
    162f:	25 03 00             	and    $0x3,%ax
    1632:	89 46 c4             	mov    %ax,-0x3c(%bp)
    1635:	c7 06 ac 00 00 00    	movw   $0x0,0xac
    163b:	80 3e b3 00 00       	cmpb   $0x0,0xb3
    1640:	74 30                	je     0x1672
    1642:	80 3e b4 00 00       	cmpb   $0x0,0xb4
    1647:	74 29                	je     0x1672
    1649:	83 7e f6 00          	cmpw   $0x0,-0xa(%bp)
    164d:	74 23                	je     0x1672
    164f:	16                   	push   %ss
    1650:	8d 46 f6             	lea    -0xa(%bp),%ax
    1653:	50                   	push   %ax
    1654:	ff 76 fc             	push   -0x4(%bp)
    1657:	8d 46 ea             	lea    -0x16(%bp),%ax
    165a:	8c d2                	mov    %ss,%dx
    165c:	b9 08 00             	mov    $0x8,%cx
    165f:	e8 9c 2b             	call   0x41fe
    1662:	16                   	push   %ss
    1663:	8d 46 dc             	lea    -0x24(%bp),%ax
    1666:	50                   	push   %ax
    1667:	16                   	push   %ss
    1668:	8d 46 e6             	lea    -0x1a(%bp),%ax
    166b:	50                   	push   %ax
    166c:	e8 34 f8             	call   0xea3
    166f:	83 c4 16             	add    $0x16,%sp
    1672:	16                   	push   %ss
    1673:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1676:	50                   	push   %ax
    1677:	16                   	push   %ss
    1678:	8d 46 dc             	lea    -0x24(%bp),%ax
    167b:	50                   	push   %ax
    167c:	16                   	push   %ss
    167d:	8d 46 fa             	lea    -0x6(%bp),%ax
    1680:	50                   	push   %ax
    1681:	16                   	push   %ss
    1682:	8d 46 f6             	lea    -0xa(%bp),%ax
    1685:	50                   	push   %ax
    1686:	8d 46 ea             	lea    -0x16(%bp),%ax
    1689:	8c d2                	mov    %ss,%dx
    168b:	b9 08 00             	mov    $0x8,%cx
    168e:	e8 6d 2b             	call   0x41fe
    1691:	e8 b6 f5             	call   0xc4a
    1694:	83 c4 18             	add    $0x18,%sp
    1697:	ff 76 fe             	push   -0x2(%bp)
    169a:	e8 4c 25             	call   0x3be9
    169d:	83 c4 02             	add    $0x2,%sp
    16a0:	83 3e aa 00 00       	cmpw   $0x0,0xaa
    16a5:	74 1a                	je     0x16c1
    16a7:	1e                   	push   %ds
    16a8:	68 17 76             	push   $0x7617
    16ab:	ff 76 fc             	push   -0x4(%bp)
    16ae:	8d 46 ea             	lea    -0x16(%bp),%ax
    16b1:	8c d2                	mov    %ss,%dx
    16b3:	b9 08 00             	mov    $0x8,%cx
    16b6:	e8 45 2b             	call   0x41fe
    16b9:	e8 d3 23             	call   0x3a8f
    16bc:	83 c4 0e             	add    $0xe,%sp
    16bf:	eb 18                	jmp    0x16d9
    16c1:	1e                   	push   %ds
    16c2:	68 17 76             	push   $0x7617
    16c5:	ff 76 fc             	push   -0x4(%bp)
    16c8:	8d 46 ea             	lea    -0x16(%bp),%ax
    16cb:	8c d2                	mov    %ss,%dx
    16cd:	b9 08 00             	mov    $0x8,%cx
    16d0:	e8 2b 2b             	call   0x41fe
    16d3:	e8 4b 27             	call   0x3e21
    16d6:	83 c4 0e             	add    $0xe,%sp
    16d9:	ff 76 fe             	push   -0x2(%bp)
    16dc:	1e                   	push   %ds
    16dd:	68 b2 0b             	push   $0xbb2
    16e0:	e8 31 25             	call   0x3c14
    16e3:	83 c4 06             	add    $0x6,%sp
    16e6:	16                   	push   %ss
    16e7:	8d 46 e6             	lea    -0x1a(%bp),%ax
    16ea:	50                   	push   %ax
    16eb:	e8 a1 eb             	call   0x28f
    16ee:	83 c4 04             	add    $0x4,%sp
    16f1:	16                   	push   %ss
    16f2:	8d 46 dc             	lea    -0x24(%bp),%ax
    16f5:	50                   	push   %ax
    16f6:	ff 76 fe             	push   -0x2(%bp)
    16f9:	ff 76 fc             	push   -0x4(%bp)
    16fc:	8d 46 ea             	lea    -0x16(%bp),%ax
    16ff:	8c d2                	mov    %ss,%dx
    1701:	b9 08 00             	mov    $0x8,%cx
    1704:	e8 f7 2a             	call   0x41fe
    1707:	e8 d2 f0             	call   0x7dc
    170a:	83 c4 10             	add    $0x10,%sp
    170d:	ff 76 fe             	push   -0x2(%bp)
    1710:	68 94 00             	push   $0x94
    1713:	66 6a 00             	pushl  $0x0
    1716:	66 6a 00             	pushl  $0x0
    1719:	e8 04 0f             	call   0x2620
    171c:	83 c4 0c             	add    $0xc,%sp
    171f:	16                   	push   %ss
    1720:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1723:	50                   	push   %ax
    1724:	16                   	push   %ss
    1725:	8d 46 f2             	lea    -0xe(%bp),%ax
    1728:	50                   	push   %ax
    1729:	16                   	push   %ss
    172a:	8d 46 fa             	lea    -0x6(%bp),%ax
    172d:	50                   	push   %ax
    172e:	8d 46 ea             	lea    -0x16(%bp),%ax
    1731:	8c d2                	mov    %ss,%dx
    1733:	b9 08 00             	mov    $0x8,%cx
    1736:	e8 c5 2a             	call   0x41fe
    1739:	e8 06 f7             	call   0xe42
    173c:	83 c4 14             	add    $0x14,%sp
    173f:	16                   	push   %ss
    1740:	8d 46 fe             	lea    -0x2(%bp),%ax
    1743:	50                   	push   %ax
    1744:	e8 eb eb             	call   0x332
    1747:	83 c4 04             	add    $0x4,%sp
    174a:	16                   	push   %ss
    174b:	8d 46 d4             	lea    -0x2c(%bp),%ax
    174e:	50                   	push   %ax
    174f:	e8 df 07             	call   0x1f31
    1752:	83 c4 04             	add    $0x4,%sp
    1755:	ff 76 c6             	push   -0x3a(%bp)
    1758:	8d 46 ea             	lea    -0x16(%bp),%ax
    175b:	8c d2                	mov    %ss,%dx
    175d:	b9 08 00             	mov    $0x8,%cx
    1760:	e8 9b 2a             	call   0x41fe
    1763:	16                   	push   %ss
    1764:	8d 46 d4             	lea    -0x2c(%bp),%ax
    1767:	50                   	push   %ax
    1768:	e8 9b f7             	call   0xf06
    176b:	83 c4 0e             	add    $0xe,%sp
    176e:	89 46 f8             	mov    %ax,-0x8(%bp)
    1771:	16                   	push   %ss
    1772:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1775:	50                   	push   %ax
    1776:	e8 16 eb             	call   0x28f
    1779:	83 c4 04             	add    $0x4,%sp
    177c:	80 3e ae 00 32       	cmpb   $0x32,0xae
    1781:	75 19                	jne    0x179c
    1783:	16                   	push   %ss
    1784:	8d 46 fe             	lea    -0x2(%bp),%ax
    1787:	50                   	push   %ax
    1788:	ff 76 fc             	push   -0x4(%bp)
    178b:	16                   	push   %ss
    178c:	8d 46 ea             	lea    -0x16(%bp),%ax
    178f:	50                   	push   %ax
    1790:	e8 de eb             	call   0x371
    1793:	83 c4 0a             	add    $0xa,%sp
    1796:	c7 06 ac 00 00 00    	movw   $0x0,0xac
    179c:	80 3e ae 00 19       	cmpb   $0x19,0xae
    17a1:	75 15                	jne    0x17b8
    17a3:	16                   	push   %ss
    17a4:	8d 46 fe             	lea    -0x2(%bp),%ax
    17a7:	50                   	push   %ax
    17a8:	1e                   	push   %ds
    17a9:	68 1e 01             	push   $0x11e
    17ac:	e8 62 19             	call   0x3111
    17af:	83 c4 08             	add    $0x8,%sp
    17b2:	c7 06 ac 00 00 00    	movw   $0x0,0xac
    17b8:	80 3e ae 00 11       	cmpb   $0x11,0xae
    17bd:	75 38                	jne    0x17f7
    17bf:	a1 aa 00             	mov    0xaa,%ax
    17c2:	f7 d8                	neg    %ax
    17c4:	1b c0                	sbb    %ax,%ax
    17c6:	40                   	inc    %ax
    17c7:	a3 aa 00             	mov    %ax,0xaa
    17ca:	83 3e aa 00 00       	cmpw   $0x0,0xaa
    17cf:	74 11                	je     0x17e2
    17d1:	16                   	push   %ss
    17d2:	8d 46 fe             	lea    -0x2(%bp),%ax
    17d5:	50                   	push   %ax
    17d6:	1e                   	push   %ds
    17d7:	68 2b 01             	push   $0x12b
    17da:	e8 34 19             	call   0x3111
    17dd:	83 c4 08             	add    $0x8,%sp
    17e0:	eb 0f                	jmp    0x17f1
    17e2:	16                   	push   %ss
    17e3:	8d 46 fe             	lea    -0x2(%bp),%ax
    17e6:	50                   	push   %ax
    17e7:	1e                   	push   %ds
    17e8:	68 35 01             	push   $0x135
    17eb:	e8 23 19             	call   0x3111
    17ee:	83 c4 08             	add    $0x8,%sp
    17f1:	c7 06 ac 00 00 00    	movw   $0x0,0xac
    17f7:	80 3e ae 00 01       	cmpb   $0x1,0xae
    17fc:	74 0f                	je     0x180d
    17fe:	83 7e f8 00          	cmpw   $0x0,-0x8(%bp)
    1802:	75 09                	jne    0x180d
    1804:	83 7e f2 00          	cmpw   $0x0,-0xe(%bp)
    1808:	74 03                	je     0x180d
    180a:	e9 ec fd             	jmp    0x15f9
    180d:	c7 06 a8 00 00 00    	movw   $0x0,0xa8
    1813:	16                   	push   %ss
    1814:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1817:	50                   	push   %ax
    1818:	e8 8b 08             	call   0x20a6
    181b:	83 c4 04             	add    $0x4,%sp
    181e:	80 3e ae 00 01       	cmpb   $0x1,0xae
    1823:	75 03                	jne    0x1828
    1825:	e9 94 01             	jmp    0x19bc
    1828:	83 7e f2 00          	cmpw   $0x0,-0xe(%bp)
    182c:	75 3e                	jne    0x186c
    182e:	66 68 20 00 20 00    	pushl  $0x200020
    1834:	ff 46 f4             	incw   -0xc(%bp)
    1837:	8b 46 f4             	mov    -0xc(%bp),%ax
    183a:	50                   	push   %ax
    183b:	e8 5f f9             	call   0x119d
    183e:	83 c4 06             	add    $0x6,%sp
    1841:	89 46 f2             	mov    %ax,-0xe(%bp)
    1844:	ff 4e d2             	decw   -0x2e(%bp)
    1847:	ff 76 f4             	push   -0xc(%bp)
    184a:	1e                   	push   %ds
    184b:	68 40 01             	push   $0x140
    184e:	16                   	push   %ss
    184f:	8d 46 80             	lea    -0x80(%bp),%ax
    1852:	50                   	push   %ax
    1853:	e8 ec 3d             	call   0x5642
    1856:	83 c4 0a             	add    $0xa,%sp
    1859:	16                   	push   %ss
    185a:	8d 46 fe             	lea    -0x2(%bp),%ax
    185d:	50                   	push   %ax
    185e:	16                   	push   %ss
    185f:	8d 46 80             	lea    -0x80(%bp),%ax
    1862:	50                   	push   %ax
    1863:	e8 ab 18             	call   0x3111
    1866:	83 c4 08             	add    $0x8,%sp
    1869:	e9 2d 01             	jmp    0x1999
    186c:	c7 06 a8 00 01 00    	movw   $0x1,0xa8
    1872:	c7 06 ac 00 01 00    	movw   $0x1,0xac
    1878:	c7 46 c2 00 00       	movw   $0x0,-0x3e(%bp)
    187d:	66 68 f4 01 19 00    	pushl  $0x1901f4
    1883:	16                   	push   %ss
    1884:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1887:	50                   	push   %ax
    1888:	e8 ea 06             	call   0x1f75
    188b:	83 c4 08             	add    $0x8,%sp
    188e:	a1 ac 00             	mov    0xac,%ax
    1891:	c1 e0 03             	shl    $0x3,%ax
    1894:	01 46 fc             	add    %ax,-0x4(%bp)
    1897:	a1 ac 00             	mov    0xac,%ax
    189a:	c1 e0 03             	shl    $0x3,%ax
    189d:	01 46 c2             	add    %ax,-0x3e(%bp)
    18a0:	8b 46 fc             	mov    -0x4(%bp),%ax
    18a3:	25 ff 03             	and    $0x3ff,%ax
    18a6:	89 46 fc             	mov    %ax,-0x4(%bp)
    18a9:	c7 06 ac 00 00 00    	movw   $0x0,0xac
    18af:	ff 76 fe             	push   -0x2(%bp)
    18b2:	e8 34 23             	call   0x3be9
    18b5:	83 c4 02             	add    $0x2,%sp
    18b8:	83 3e aa 00 00       	cmpw   $0x0,0xaa
    18bd:	74 1a                	je     0x18d9
    18bf:	1e                   	push   %ds
    18c0:	68 17 76             	push   $0x7617
    18c3:	ff 76 fc             	push   -0x4(%bp)
    18c6:	8d 46 ea             	lea    -0x16(%bp),%ax
    18c9:	8c d2                	mov    %ss,%dx
    18cb:	b9 08 00             	mov    $0x8,%cx
    18ce:	e8 2d 29             	call   0x41fe
    18d1:	e8 bb 21             	call   0x3a8f
    18d4:	83 c4 0e             	add    $0xe,%sp
    18d7:	eb 18                	jmp    0x18f1
    18d9:	1e                   	push   %ds
    18da:	68 17 76             	push   $0x7617
    18dd:	ff 76 fc             	push   -0x4(%bp)
    18e0:	8d 46 ea             	lea    -0x16(%bp),%ax
    18e3:	8c d2                	mov    %ss,%dx
    18e5:	b9 08 00             	mov    $0x8,%cx
    18e8:	e8 13 29             	call   0x41fe
    18eb:	e8 33 25             	call   0x3e21
    18ee:	83 c4 0e             	add    $0xe,%sp
    18f1:	ff 76 fe             	push   -0x2(%bp)
    18f4:	1e                   	push   %ds
    18f5:	68 b2 0b             	push   $0xbb2
    18f8:	e8 19 23             	call   0x3c14
    18fb:	83 c4 06             	add    $0x6,%sp
    18fe:	16                   	push   %ss
    18ff:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1902:	50                   	push   %ax
    1903:	e8 89 e9             	call   0x28f
    1906:	83 c4 04             	add    $0x4,%sp
    1909:	16                   	push   %ss
    190a:	8d 46 dc             	lea    -0x24(%bp),%ax
    190d:	50                   	push   %ax
    190e:	ff 76 fe             	push   -0x2(%bp)
    1911:	ff 76 fc             	push   -0x4(%bp)
    1914:	8d 46 ea             	lea    -0x16(%bp),%ax
    1917:	8c d2                	mov    %ss,%dx
    1919:	b9 08 00             	mov    $0x8,%cx
    191c:	e8 df 28             	call   0x41fe
    191f:	e8 ba ee             	call   0x7dc
    1922:	83 c4 10             	add    $0x10,%sp
    1925:	ff 76 fe             	push   -0x2(%bp)
    1928:	68 94 00             	push   $0x94
    192b:	66 6a 00             	pushl  $0x0
    192e:	66 6a 00             	pushl  $0x0
    1931:	e8 ec 0c             	call   0x2620
    1934:	83 c4 0c             	add    $0xc,%sp
    1937:	16                   	push   %ss
    1938:	8d 46 fe             	lea    -0x2(%bp),%ax
    193b:	50                   	push   %ax
    193c:	e8 f3 e9             	call   0x332
    193f:	83 c4 04             	add    $0x4,%sp
    1942:	16                   	push   %ss
    1943:	8d 46 d4             	lea    -0x2c(%bp),%ax
    1946:	50                   	push   %ax
    1947:	e8 e7 05             	call   0x1f31
    194a:	83 c4 04             	add    $0x4,%sp
    194d:	16                   	push   %ss
    194e:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1951:	50                   	push   %ax
    1952:	e8 3a e9             	call   0x28f
    1955:	83 c4 04             	add    $0x4,%sp
    1958:	81 7e c2 00 04       	cmpw   $0x400,-0x3e(%bp)
    195d:	7d 03                	jge    0x1962
    195f:	e9 2c ff             	jmp    0x188e
    1962:	16                   	push   %ss
    1963:	8d 46 e6             	lea    -0x1a(%bp),%ax
    1966:	50                   	push   %ax
    1967:	e8 3c 07             	call   0x20a6
    196a:	83 c4 04             	add    $0x4,%sp
    196d:	c7 06 a8 00 00 00    	movw   $0x0,0xa8
    1973:	83 7e d2 03          	cmpw   $0x3,-0x2e(%bp)
    1977:	74 11                	je     0x198a
    1979:	16                   	push   %ss
    197a:	8d 46 fe             	lea    -0x2(%bp),%ax
    197d:	50                   	push   %ax
    197e:	1e                   	push   %ds
    197f:	68 57 01             	push   $0x157
    1982:	e8 8c 17             	call   0x3111
    1985:	83 c4 08             	add    $0x8,%sp
    1988:	eb 0f                	jmp    0x1999
    198a:	16                   	push   %ss
    198b:	8d 46 fe             	lea    -0x2(%bp),%ax
    198e:	50                   	push   %ax
    198f:	1e                   	push   %ds
    1990:	68 6c 01             	push   $0x16c
    1993:	e8 7b 17             	call   0x3111
    1996:	83 c4 08             	add    $0x8,%sp
    1999:	ff 76 f8             	push   -0x8(%bp)
    199c:	ff 76 d2             	push   -0x2e(%bp)
    199f:	16                   	push   %ss
    19a0:	8d 46 dc             	lea    -0x24(%bp),%ax
    19a3:	50                   	push   %ax
    19a4:	e8 bf f5             	call   0xf66
    19a7:	83 c4 08             	add    $0x8,%sp
    19aa:	ff 46 d2             	incw   -0x2e(%bp)
    19ad:	83 7e d2 04          	cmpw   $0x4,-0x2e(%bp)
    19b1:	7d 09                	jge    0x19bc
    19b3:	83 7e f4 05          	cmpw   $0x5,-0xc(%bp)
    19b7:	7d 03                	jge    0x19bc
    19b9:	e9 06 fb             	jmp    0x14c2
    19bc:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
    19c1:	6a 03                	push   $0x3
    19c3:	8b 5e fc             	mov    -0x4(%bp),%bx
    19c6:	c1 e3 02             	shl    $0x2,%bx
    19c9:	8d 46 98             	lea    -0x68(%bp),%ax
    19cc:	03 d8                	add    %ax,%bx
    19ce:	66 36 ff 37          	pushl  %ss:(%bx)
    19d2:	e8 c5 0c             	call   0x269a
    19d5:	83 c4 06             	add    $0x6,%sp
    19d8:	ff 46 fc             	incw   -0x4(%bp)
    19db:	83 7e fc 04          	cmpw   $0x4,-0x4(%bp)
    19df:	7c e0                	jl     0x19c1
    19e1:	16                   	push   %ss
    19e2:	8d 46 e6             	lea    -0x1a(%bp),%ax
    19e5:	50                   	push   %ax
    19e6:	e8 bd 06             	call   0x20a6
    19e9:	83 c4 04             	add    $0x4,%sp
    19ec:	83 7e f4 05          	cmpw   $0x5,-0xc(%bp)
    19f0:	75 05                	jne    0x19f7
    19f2:	b8 01 00             	mov    $0x1,%ax
    19f5:	eb 02                	jmp    0x19f9
    19f7:	33 c0                	xor    %ax,%ax
    19f9:	89 46 d0             	mov    %ax,-0x30(%bp)
    19fc:	6a 02                	push   $0x2
    19fe:	16                   	push   %ss
    19ff:	8d 46 dc             	lea    -0x24(%bp),%ax
    1a02:	50                   	push   %ax
    1a03:	e8 86 07             	call   0x218c
    1a06:	83 c4 06             	add    $0x6,%sp
    1a09:	8b 46 d0             	mov    -0x30(%bp),%ax
    1a0c:	5f                   	pop    %di
    1a0d:	5e                   	pop    %si
    1a0e:	c9                   	leave
    1a0f:	c3                   	ret
    1a10:	55                   	push   %bp
    1a11:	8b ec                	mov    %sp,%bp
    1a13:	83 ec 06             	sub    $0x6,%sp
