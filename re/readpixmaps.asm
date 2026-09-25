; readpixmaps @ 0x1A10 len 0x150
00001a10 <.data+0x1a10>:
    1a10:	55                   	push   %bp
    1a11:	8b ec                	mov    %sp,%bp
    1a13:	83 ec 06             	sub    $0x6,%sp
    1a16:	57                   	push   %di
    1a17:	66 68 00 04 00 00    	pushl  $0x400
    1a1d:	1e                   	push   %ds
    1a1e:	68 b3 51             	push   $0x51b3
    1a21:	1e                   	push   %ds
    1a22:	68 77 01             	push   $0x177
    1a25:	e8 05 15             	call   0x2f2d
    1a28:	83 c4 0c             	add    $0xc,%sp
    1a2b:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    1a30:	c7 46 fc b3 51       	movw   $0x51b3,-0x4(%bp)
    1a35:	8b 5e fc             	mov    -0x4(%bp),%bx
    1a38:	80 3f 20             	cmpb   $0x20,(%bx)
    1a3b:	76 0b                	jbe    0x1a48
    1a3d:	80 3f 40             	cmpb   $0x40,(%bx)
    1a40:	73 06                	jae    0x1a48
    1a42:	8a 07                	mov    (%bx),%al
    1a44:	04 7a                	add    $0x7a,%al
    1a46:	88 07                	mov    %al,(%bx)
    1a48:	ff 46 fc             	incw   -0x4(%bp)
    1a4b:	ff 46 fe             	incw   -0x2(%bp)
    1a4e:	81 7e fc b3 55       	cmpw   $0x55b3,-0x4(%bp)
    1a53:	75 e0                	jne    0x1a35
    1a55:	66 68 00 04 00 00    	pushl  $0x400
    1a5b:	1e                   	push   %ds
    1a5c:	68 b3 55             	push   $0x55b3
    1a5f:	1e                   	push   %ds
    1a60:	68 7e 01             	push   $0x17e
    1a63:	e8 c7 14             	call   0x2f2d
    1a66:	83 c4 0c             	add    $0xc,%sp
    1a69:	66 68 00 04 00 00    	pushl  $0x400
    1a6f:	1e                   	push   %ds
    1a70:	68 b3 59             	push   $0x59b3
    1a73:	1e                   	push   %ds
    1a74:	68 85 01             	push   $0x185
    1a77:	e8 b3 14             	call   0x2f2d
    1a7a:	83 c4 0c             	add    $0xc,%sp
    1a7d:	66 68 00 04 00 00    	pushl  $0x400
    1a83:	1e                   	push   %ds
    1a84:	68 b3 5d             	push   $0x5db3
    1a87:	1e                   	push   %ds
    1a88:	68 90 01             	push   $0x190
    1a8b:	e8 9f 14             	call   0x2f2d
    1a8e:	83 c4 0c             	add    $0xc,%sp
    1a91:	66 68 00 04 00 00    	pushl  $0x400
    1a97:	1e                   	push   %ds
    1a98:	68 b3 61             	push   $0x61b3
    1a9b:	1e                   	push   %ds
    1a9c:	68 9b 01             	push   $0x19b
    1a9f:	e8 8b 14             	call   0x2f2d
    1aa2:	83 c4 0c             	add    $0xc,%sp
    1aa5:	c7 46 fe 00 20       	movw   $0x2000,-0x2(%bp)
    1aaa:	eb 12                	jmp    0x1abe
    1aac:	8b 5e fe             	mov    -0x2(%bp),%bx
    1aaf:	80 bf b3 3d 40       	cmpb   $0x40,0x3db3(%bx)
    1ab4:	73 05                	jae    0x1abb
    1ab6:	80 8f b3 3d 40       	orb    $0x40,0x3db3(%bx)
    1abb:	ff 46 fe             	incw   -0x2(%bp)
    1abe:	81 7e fe 00 28       	cmpw   $0x2800,-0x2(%bp)
    1ac3:	7c e7                	jl     0x1aac
    1ac5:	66 6a 64             	pushl  $0x64
    1ac8:	1e                   	push   %ds
    1ac9:	68 b3 75             	push   $0x75b3
    1acc:	1e                   	push   %ds
    1acd:	68 a7 01             	push   $0x1a7
    1ad0:	e8 5a 14             	call   0x2f2d
    1ad3:	83 c4 0c             	add    $0xc,%sp
    1ad6:	b9 00 02             	mov    $0x200,%cx
    1ad9:	bf b3 65             	mov    $0x65b3,%di
    1adc:	1e                   	push   %ds
    1add:	07                   	pop    %es
    1ade:	b8 71 71             	mov    $0x7171,%ax
    1ae1:	f3 ab                	rep stos %ax,%es:(%di)
    1ae3:	c7 46 fe 01 00       	movw   $0x1,-0x2(%bp)
    1ae8:	c7 46 fa 19 76       	movw   $0x7619,-0x6(%bp)
    1aed:	b8 d0 07             	mov    $0x7d0,%ax
    1af0:	99                   	cwtd
    1af1:	f7 7e fe             	idivw  -0x2(%bp)
    1af4:	8b 5e fa             	mov    -0x6(%bp),%bx
    1af7:	89 07                	mov    %ax,(%bx)
    1af9:	83 46 fa 02          	addw   $0x2,-0x6(%bp)
    1afd:	ff 46 fe             	incw   -0x2(%bp)
    1b00:	81 7e fa df 76       	cmpw   $0x76df,-0x6(%bp)
    1b05:	75 e6                	jne    0x1aed
    1b07:	5f                   	pop    %di
    1b08:	c9                   	leave
    1b09:	c3                   	ret
    1b0a:	55                   	push   %bp
    1b0b:	8b ec                	mov    %sp,%bp
    1b0d:	b8 12 10             	mov    $0x1012,%ax
    1b10:	c4 56 04             	les    0x4(%bp),%dx
    1b13:	8b 5e 08             	mov    0x8(%bp),%bx
    1b16:	8b 4e 0a             	mov    0xa(%bp),%cx
    1b19:	2b cb                	sub    %bx,%cx
    1b1b:	41                   	inc    %cx
    1b1c:	cd 10                	int    $0x10
    1b1e:	5d                   	pop    %bp
    1b1f:	c3                   	ret
    1b20:	55                   	push   %bp
    1b21:	8b ec                	mov    %sp,%bp
    1b23:	81 ec 00 03          	sub    $0x300,%sp
    1b27:	66 68 00 03 00 00    	pushl  $0x300
    1b2d:	16                   	push   %ss
    1b2e:	8d 86 00 fd          	lea    -0x300(%bp),%ax
    1b32:	50                   	push   %ax
    1b33:	1e                   	push   %ds
    1b34:	68 ae 01             	push   $0x1ae
    1b37:	e8 f3 13             	call   0x2f2d
    1b3a:	83 c4 0c             	add    $0xc,%sp
    1b3d:	66 68 00 00 ff 00    	pushl  $0xff0000
    1b43:	16                   	push   %ss
    1b44:	8d 86 00 fd          	lea    -0x300(%bp),%ax
    1b48:	50                   	push   %ax
    1b49:	e8 be ff             	call   0x1b0a
    1b4c:	83 c4 08             	add    $0x8,%sp
    1b4f:	c9                   	leave
    1b50:	c3                   	ret
    1b51:	55                   	push   %bp
    1b52:	8b ec                	mov    %sp,%bp
    1b54:	83 ec 10             	sub    $0x10,%sp
    1b57:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    1b5c:	e9 8a 01             	jmp    0x1ce9
    1b5f:	c7           	movw   $0x100,-0xc(%bp)
