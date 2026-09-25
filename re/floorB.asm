; floorB @ 0x3E21 len 0x150
00003e21 <.data+0x3e21>:
    3e21:	55                   	push   %bp
    3e22:	8b ec                	mov    %sp,%bp
    3e24:	83 ec 24             	sub    $0x24,%sp
    3e27:	be 00 00             	mov    $0x0,%si
    3e2a:	ff 76 0c             	push   0xc(%bp)
    3e2d:	e8 ec c4             	call   0x31c
    3e30:	83 c4 02             	add    $0x2,%sp
    3e33:	66 0f bf c0          	movswl %ax,%eax
    3e37:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    3e3b:	66 f7 d8             	neg    %eax
    3e3e:	66 89 46 f0          	mov    %eax,-0x10(%bp)
    3e42:	ff 76 0c             	push   0xc(%bp)
    3e45:	e8 c2 c4             	call   0x30a
    3e48:	83 c4 02             	add    $0x2,%sp
    3e4b:	66 0f bf c0          	movswl %ax,%eax
    3e4f:	66 89 46 f8          	mov    %eax,-0x8(%bp)
    3e53:	66 89 46 f4          	mov    %eax,-0xc(%bp)
    3e57:	66 c7 46 ec 03 00 00 	movl   $0x3,-0x14(%bp)
    3e5e:	00 
    3e5f:	8e 46 10             	mov    0x10(%bp),%es
    3e62:	8b 46 ec             	mov    -0x14(%bp),%ax
    3e65:	d1 e0                	shl    $1,%ax
    3e67:	8b 5e 0e             	mov    0xe(%bp),%bx
    3e6a:	03 d8                	add    %ax,%bx
    3e6c:	66 26 0f bf 07       	movswl %es:(%bx),%eax
    3e71:	66 8b d8             	mov    %eax,%ebx
    3e74:	66 8b 46 fc          	mov    -0x4(%bp),%eax
    3e78:	66 f7 eb             	imul   %ebx
    3e7b:	66 8b 56 04          	mov    0x4(%bp),%edx
    3e7f:	66 c1 e2 08          	shl    $0x8,%edx
    3e83:	66 03 c2             	add    %edx,%eax
    3e86:	66 89 46 e8          	mov    %eax,-0x18(%bp)
    3e8a:	66 8b 46 f8          	mov    -0x8(%bp),%eax
    3e8e:	66 f7 eb             	imul   %ebx
    3e91:	66 8b 56 08          	mov    0x8(%bp),%edx
    3e95:	66 c1 e2 08          	shl    $0x8,%edx
    3e99:	66 03 c2             	add    %edx,%eax
    3e9c:	66 89 46 e4          	mov    %eax,-0x1c(%bp)
    3ea0:	66 8b 46 f4          	mov    -0xc(%bp),%eax
    3ea4:	66 f7 eb             	imul   %ebx
    3ea7:	66 8b d0             	mov    %eax,%edx
    3eaa:	66 f7 da             	neg    %edx
    3ead:	66 c1 fa 06          	sar    $0x6,%edx
    3eb1:	66 89 56 e0          	mov    %edx,-0x20(%bp)
    3eb5:	66 03 46 e8          	add    -0x18(%bp),%eax
    3eb9:	66 8b c8             	mov    %eax,%ecx
    3ebc:	66 8b 46 f0          	mov    -0x10(%bp),%eax
    3ec0:	66 f7 eb             	imul   %ebx
    3ec3:	66 8b d0             	mov    %eax,%edx
    3ec6:	66 f7 da             	neg    %edx
    3ec9:	66 c1 fa 06          	sar    $0x6,%edx
    3ecd:	66 89 56 dc          	mov    %edx,-0x24(%bp)
    3ed1:	66 03 46 e4          	add    -0x1c(%bp),%eax
    3ed5:	66 8b f8             	mov    %eax,%edi
    3ed8:	66 8b d3             	mov    %ebx,%edx
    3edb:	66 c1 fb 07          	sar    $0x7,%ebx
    3edf:	66 c1 fa 05          	sar    $0x5,%edx
    3ee3:	2b d3                	sub    %bx,%dx
    3ee5:	b0 00                	mov    $0x0,%al
    3ee7:	66 f7 c1 00 00 fc ff 	test   $0xfffc0000,%ecx
    3eee:	75 3f                	jne    0x3f2f
    3ef0:	90                   	nop
    3ef1:	90                   	nop
    3ef2:	66 f7 c7 00 00 fc ff 	test   $0xfffc0000,%edi
    3ef9:	75 34                	jne    0x3f2f
    3efb:	90                   	nop
    3efc:	90                   	nop
    3efd:	66 8b c1             	mov    %ecx,%eax
    3f00:	66 c1 f8 0c          	sar    $0xc,%eax
    3f04:	25 fe 00             	and    $0xfe,%ax
    3f07:	66 8b df             	mov    %edi,%ebx
    3f0a:	66 c1 fb 07          	sar    $0x7,%ebx
    3f0e:	81 e3 c0 07          	and    $0x7c0,%bx
    3f12:	03 d8                	add    %ax,%bx
    3f14:	8b 9f b3 6d          	mov    0x6db3(%bx),%bx
    3f18:	8a dd                	mov    %ch,%bl
    3f1a:	80 e3 1f             	and    $0x1f,%bl
    3f1d:	66 8b c7             	mov    %edi,%eax
    3f20:	66 c1 f8 03          	sar    $0x3,%eax
    3f24:	25 e0 03             	and    $0x3e0,%ax
    3f27:	03 d8                	add    %ax,%bx
    3f29:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
    3f2d:	2a c2                	sub    %dl,%al
    3f2f:	88 84 b2 0b          	mov    %al,0xbb2(%si)
    3f33:	66 03 4e e0          	add    -0x20(%bp),%ecx
    3f37:	66 03 7e dc          	add    -0x24(%bp),%edi
    3f3b:	b0 00                	mov    $0x0,%al
    3f3d:	66 f7 c1 00 00 fc ff 	test   $0xfffc0000,%ecx
    3f44:	75 3f                	jne    0x3f85
    3f46:	90                   	nop
    3f47:	90                   	nop
    3f48:	66 f7 c7 00 00 fc ff 	test   $0xfffc0000,%edi
    3f4f:	75 34                	jne    0x3f85
    3f51:	90                   	nop
    3f52:	90                   	nop
    3f53:	66 8b c1             	mov    %ecx,%eax
    3f56:	66 c1 f8 0c          	sar    $0xc,%eax
    3f5a:	25 fe 00             	and    $0xfe,%ax
    3f5d:	66 8b df             	mov    %edi,%ebx
    3f60:	66 c1 fb 07          	sar    $0x7,%ebx
    3f64:	81 e3 c0 07          	and    $0x7c0,%bx
    3f68:	03 d8                	add    %ax,%bx
    3f6a:	8b 9f b3 6d          	mov    0x6db3(%bx),%bx
    3f6e:	8a dd                	mov    %ch,%bl
    3f70:	80               	and    $0x1f,%bl
