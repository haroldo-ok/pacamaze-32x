; glyph @ 0x2FD4 len 0x60
00002fd4 <.data+0x2fd4>:
    2fd4:	55                   	push   %bp
    2fd5:	8b ec                	mov    %sp,%bp
    2fd7:	80 7e 08 2f          	cmpb   $0x2f,0x8(%bp)
    2fdb:	76 20                	jbe    0x2ffd
    2fdd:	80 7e 08 3a          	cmpb   $0x3a,0x8(%bp)
    2fe1:	73 1a                	jae    0x2ffd
    2fe3:	ff 76 0a             	push   0xa(%bp)
    2fe6:	8a 46 08             	mov    0x8(%bp),%al
    2fe9:	b4 00                	mov    $0x0,%ah
    2feb:	05 d0 ff             	add    $0xffd0,%ax
    2fee:	50                   	push   %ax
    2fef:	ff 76 06             	push   0x6(%bp)
    2ff2:	ff 76 04             	push   0x4(%bp)
    2ff5:	e8 61 ff             	call   0x2f59
    2ff8:	83 c4 08             	add    $0x8,%sp
    2ffb:	5d                   	pop    %bp
    2ffc:	c3                   	ret
    2ffd:	ff 76 0a             	push   0xa(%bp)
    3000:	8a 46 08             	mov    0x8(%bp),%al
    3003:	b4 00                	mov    $0x0,%ah
    3005:	05 a9 ff             	add    $0xffa9,%ax
    3008:	50                   	push   %ax
    3009:	ff 76 06             	push   0x6(%bp)
    300c:	ff 76 04             	push   0x4(%bp)
    300f:	e8 47 ff             	call   0x2f59
    3012:	83 c4 08             	add    $0x8,%sp
    3015:	5d                   	pop    %bp
    3016:	c3                   	ret
    3017:	55                   	push   %bp
    3018:	8b ec                	mov    %sp,%bp
    301a:	83 ec 06             	sub    $0x6,%sp
    301d:	c7 46 fe 1e 00       	movw   $0x1e,-0x2(%bp)
    3022:	8b 46 06             	mov    0x6(%bp),%ax
    3025:	05 1e 00             	add    $0x1e,%ax
    3028:	89 46 fc             	mov    %ax,-0x4(%bp)
    302b:	eb 40                	jmp    0x306d
    302d:	8b 46 04             	mov    0x4(%bp),%ax
    3030:	bb 0a 00             	mov    $0xa,%bx
    3033:	99                   	cwtd
