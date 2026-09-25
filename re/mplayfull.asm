; mplayfull @ 0xA63 len 0x150
00000a63 <.data+0xa63>:
     a63:	55                   	push   %bp
     a64:	8b ec                	mov    %sp,%bp
     a66:	83 ec 08             	sub    $0x8,%sp
     a69:	80 3e af 00 00       	cmpb   $0x0,0xaf
     a6e:	75 03                	jne    0xa73
     a70:	e9 97 00             	jmp    0xb0a
     a73:	ff 76 10             	push   0x10(%bp)
     a76:	e8 a3 f8             	call   0x31c
     a79:	83 c4 02             	add    $0x2,%sp
     a7c:	bb 0a 00             	mov    $0xa,%bx
     a7f:	99                   	cwtd
     a80:	f7 fb                	idiv   %bx
     a82:	66 0f bf c0          	movswl %ax,%eax
     a86:	66 8b 56 08          	mov    0x8(%bp),%edx
     a8a:	66 03 d0             	add    %eax,%edx
     a8d:	66 89 56 fc          	mov    %edx,-0x4(%bp)
     a91:	ff 76 10             	push   0x10(%bp)
     a94:	e8 73 f8             	call   0x30a
     a97:	83 c4 02             	add    $0x2,%sp
     a9a:	bb 0a 00             	mov    $0xa,%bx
     a9d:	99                   	cwtd
     a9e:	f7 fb                	idiv   %bx
     aa0:	66 0f bf c0          	movswl %ax,%eax
     aa4:	66 8b 56 0c          	mov    0xc(%bp),%edx
     aa8:	66 03 d0             	add    %eax,%edx
     aab:	66 89 56 f8          	mov    %edx,-0x8(%bp)
     aaf:	66 8b 46 fc          	mov    -0x4(%bp),%eax
     ab3:	66 c1 f8 05          	sar    $0x5,%eax
     ab7:	8b 5e f8             	mov    -0x8(%bp),%bx
     aba:	83 e3 e0             	and    $0xffe0,%bx
     abd:	03 d8                	add    %ax,%bx
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
     b2e:	66 89 56 fc          	mov    %edx,-0x4(%bp)
     b32:	ff 76 10             	push   0x10(%bp)
     b35:	e8 d2 f7             	call   0x30a
     b38:	83 c4 02             	add    $0x2,%sp
     b3b:	bb 0a 00             	mov    $0xa,%bx
     b3e:	99                   	cwtd
     b3f:	f7 fb                	idiv   %bx
     b41:	66 0f bf c0          	movswl %ax,%eax
     b45:	66 8b 56 0c          	mov    0xc(%bp),%edx
     b49:	66 2b d0             	sub    %eax,%edx
     b4c:	66 89 56 f8          	mov    %edx,-0x8(%bp)
     b50:	66 8b 46 fc          	mov    -0x4(%bp),%eax
     b54:	66 c1 f8 05          	sar    $0x5,%eax
     b58:	8b 5e f8             	mov    -0x8(%bp),%bx
     b5b:	83 e3 e0             	and    $0xffe0,%bx
     b5e:	03 d8                	add    %ax,%bx
     b60:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
     b65:	75 44                	jne    0xbab
     b67:	ff 76 10             	push   0x10(%bp)
     b6a:	e8 af f7             	call   0x31c
     b6d:	83 c4 02             	add    $0x2,%sp
     b70:	f7 2e ac 00          	imulw  0xac
     b74:	bb a2 00             	mov    $0xa2,%bx
     b77:	99                   	cwtd
     b78:	f7 fb                	idiv   %bx
     b7a:	66 0f bf c0          	movswl %ax,%eax
     b7e:	66 8b 56 08          	mov    0x8(%bp),%edx
     b82:	66 2b d0             	sub    %eax,%edx
     b85:	66 89 56 08          	mov    %edx,0x8(%bp)
     b89:	ff 76 10             	push   0x10(%bp)
     b8c:	e8 7b f7             	call   0x30a
     b8f:	83 c4 02             	add    $0x2,%sp
     b92:	f7 2e ac 00          	imulw  0xac
     b96:	bb a2 00             	mov    $0xa2,%bx
     b99:	99                   	cwtd
     b9a:	f7 fb                	idiv   %bx
     b9c:	66 0f bf c0          	movswl %ax,%eax
     ba0:	66 8b 56 0c          	mov    0xc(%bp),%edx
     ba4:	66 2b d0             	sub    %eax,%edx
     ba7:	66 89 56 0c          	mov    %edx,0xc(%bp)
     bab:	c4 5e 04             	les    0x4(%bp),%bx
     bae:	8b 46 08             	mov    0x8(%bp),%ax
     bb1:	26 89              	mov    %ax,%es:(%bx)
