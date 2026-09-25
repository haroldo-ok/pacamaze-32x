; display @ 0x3017 len 0x60
00003017 <.data+0x3017>:
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
    3034:	f7 fb                	idiv   %bx
    3036:	89 56 fa             	mov    %dx,-0x6(%bp)
    3039:	8b 46 04             	mov    0x4(%bp),%ax
    303c:	99                   	cwtd
    303d:	f7 fb                	idiv   %bx
    303f:	89 46 04             	mov    %ax,0x4(%bp)
    3042:	6a 00                	push   $0x0
    3044:	ff 76 fa             	push   -0x6(%bp)
    3047:	ff 76 08             	push   0x8(%bp)
    304a:	ff 76 fc             	push   -0x4(%bp)
    304d:	e8 09 ff             	call   0x2f59
    3050:	83 c4 08             	add    $0x8,%sp
    3053:	68 e8 03             	push   $0x3e8
    3056:	ff 76 fa             	push   -0x6(%bp)
    3059:	ff 76 08             	push   0x8(%bp)
    305c:	ff 76 fc             	push   -0x4(%bp)
    305f:	e8 f7 fe             	call   0x2f59
    3062:	83 c4 08             	add    $0x8,%sp
    3065:	83 6e fc 0a          	subw   $0xa,-0x4(%bp)
    3069:	83 6e fe 0a          	subw   $0xa,-0x2(%bp)
    306d:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    3071:	7d ba                	jge    0x302d
    3073:	c9                   	leave
    3074:	c3                   	ret
    3075:	55                   	push   %bp
    3076:	8b                 	mov    %sp,%bp
