; cleanup2 @ 0x10A3 len 0x40
000010a3 <.data+0x10a3>:
    10a3:	e8 e4 0e             	call   0x1f8a
    10a6:	83 c4 04             	add    $0x4,%sp
    10a9:	0b c0                	or     %ax,%ax
    10ab:	74 12                	je     0x10bf
    10ad:	16                   	push   %ss
    10ae:	8d 46 e4             	lea    -0x1c(%bp),%ax
    10b1:	50                   	push   %ax
    10b2:	e8 0a 0e             	call   0x1ebf
    10b5:	83 c4 04             	add    $0x4,%sp
    10b8:	0b c0                	or     %ax,%ax
    10ba:	74 03                	je     0x10bf
    10bc:	e9 20 ff             	jmp    0xfdf
    10bf:	16                   	push   %ss
    10c0:	8d 46 e4             	lea    -0x1c(%bp),%ax
    10c3:	50                   	push   %ax
    10c4:	e8 6a 0e             	call   0x1f31
    10c7:	83 c4 04             	add    $0x4,%sp
    10ca:	16                   	push   %ss
    10cb:	8d 46 e4             	lea    -0x1c(%bp),%ax
    10ce:	50                   	push   %ax
    10cf:	e8 da 0d             	call   0x1eac
    10d2:	83 c4 04             	add    $0x4,%sp
    10d5:	89 56 da             	mov    %dx,-0x26(%bp)
    10d8:	89 46 d8             	mov    %ax,-0x28(%bp)
    10db:	c4 5e d8             	les    -0x28(%bp),%bx
    10de:	66 26 ff 37          	pushl  %es:(%bx)
    10e2:	26               	les    %es:(%bx),%bx
