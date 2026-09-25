; snddiv @ 0x5080 len 0x12
00005080 <.data+0x5080>:
    5080:	a1 50 0b             	mov    0xb50,%ax
    5083:	a3 71 00             	mov    %ax,0x71
    5086:	c3                   	ret
    5087:	55                   	push   %bp
    5088:	8b ec                	mov    %sp,%bp
    508a:	8b 5e 04             	mov    0x4(%bp),%bx
    508d:	b8 dd 34             	mov    $0x34dd,%ax
    5090:	ba 12              	mov    $0x12,%dx
