; putdigit @ 0x3017 len 0x100
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
    3076:	8b ec                	mov    %sp,%bp
    3078:	83 ec 02             	sub    $0x2,%sp
    307b:	8b 46 04             	mov    0x4(%bp),%ax
    307e:	89 46 fe             	mov    %ax,-0x2(%bp)
    3081:	eb 3e                	jmp    0x30c1
    3083:	8e 46 06             	mov    0x6(%bp),%es
    3086:	8b 5e fe             	mov    -0x2(%bp),%bx
    3089:	26 80 3f 20          	cmpb   $0x20,%es:(%bx)
    308d:	74 2b                	je     0x30ba
    308f:	6a 00                	push   $0x0
    3091:	26 8a 07             	mov    %es:(%bx),%al
    3094:	50                   	push   %ax
    3095:	ff 76 0a             	push   0xa(%bp)
    3098:	ff 76 08             	push   0x8(%bp)
    309b:	e8 36 ff             	call   0x2fd4
    309e:	83 c4 08             	add    $0x8,%sp
    30a1:	68 e8 03             	push   $0x3e8
    30a4:	8e 46 06             	mov    0x6(%bp),%es
    30a7:	8b 5e fe             	mov    -0x2(%bp),%bx
    30aa:	26 8a 07             	mov    %es:(%bx),%al
    30ad:	50                   	push   %ax
    30ae:	ff 76 0a             	push   0xa(%bp)
    30b1:	ff 76 08             	push   0x8(%bp)
    30b4:	e8 1d ff             	call   0x2fd4
    30b7:	83 c4 08             	add    $0x8,%sp
    30ba:	ff 46 fe             	incw   -0x2(%bp)
    30bd:	83 46 08 0a          	addw   $0xa,0x8(%bp)
    30c1:	8e 46 06             	mov    0x6(%bp),%es
    30c4:	8b 5e fe             	mov    -0x2(%bp),%bx
    30c7:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
    30cb:	75 b6                	jne    0x3083
    30cd:	c9                   	leave
    30ce:	c3                   	ret
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
