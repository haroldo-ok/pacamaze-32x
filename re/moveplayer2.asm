; moveplayer2 @ 0xABF len 0x70
00000abf <.data+0xabf>:
     abf:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
     ac4:	75 44                	jne    0xb0a
     ac6:	ff 76 10             	push   0x10(%bp)
     ac9:	e8 50 f8             	call   0x31c
     acc:	83 c4 02             	add    $0x2,%sp
     acf:	f7 2e ac 00          	imulw  0xac
     ad3:	bb a2 00             	mov    $0xa2,%bx
     ad6:	99                   	cwtd
     ad7:	f7 fb                	idiv   %bx
     ad9:	66 0f bf c0          	movswl %ax,%eax
     add:	66 8b 56 08          	mov    0x8(%bp),%edx
     ae1:	66 03 d0             	add    %eax,%edx
     ae4:	66 89 56 08          	mov    %edx,0x8(%bp)
     ae8:	ff 76 10             	push   0x10(%bp)
     aeb:	e8 1c f8             	call   0x30a
     aee:	83 c4 02             	add    $0x2,%sp
     af1:	f7 2e ac 00          	imulw  0xac
     af5:	bb a2 00             	mov    $0xa2,%bx
     af8:	99                   	cwtd
     af9:	f7 fb                	idiv   %bx
     afb:	66 0f bf c0          	movswl %ax,%eax
     aff:	66 8b 56 0c          	mov    0xc(%bp),%edx
     b03:	66 03 d0             	add    %eax,%edx
     b06:	66 89 56 0c          	mov    %edx,0xc(%bp)
     b0a:	80 3e b0 00 00       	cmpb   $0x0,0xb0
     b0f:	75 03                	jne    0xb14
     b11:	e9 97 00             	jmp    0xbab
     b14:	ff 76 10             	push   0x10(%bp)
     b17:	e8 02 f8             	call   0x31c
     b1a:	83 c4 02             	add    $0x2,%sp
     b1d:	bb 0a 00             	mov    $0xa,%bx
     b20:	99                   	cwtd
     b21:	f7 fb                	idiv   %bx
     b23:	66 0f bf c0          	movswl %ax,%eax
     b27:	66 8b 56 08          	mov    0x8(%bp),%edx
     b2b:	66 2b d0             	sub    %eax,%edx
     b2e:	66             	mov    %edx,-0x4(%bp)
