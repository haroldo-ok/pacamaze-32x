; floorA @ 0x3A8F len 0x150
00003a8f <.data+0x3a8f>:
    3a8f:	55                   	push   %bp
    3a90:	8b ec                	mov    %sp,%bp
    3a92:	83 ec 24             	sub    $0x24,%sp
    3a95:	be 00 00             	mov    $0x0,%si
    3a98:	ff 76 0c             	push   0xc(%bp)
    3a9b:	e8 7e c8             	call   0x31c
    3a9e:	83 c4 02             	add    $0x2,%sp
    3aa1:	66 0f bf c0          	movswl %ax,%eax
    3aa5:	66 89 46 fc          	mov    %eax,-0x4(%bp)
    3aa9:	66 f7 d8             	neg    %eax
    3aac:	66 89 46 f0          	mov    %eax,-0x10(%bp)
    3ab0:	ff 76 0c             	push   0xc(%bp)
    3ab3:	e8 54 c8             	call   0x30a
    3ab6:	83 c4 02             	add    $0x2,%sp
    3ab9:	66 0f bf c0          	movswl %ax,%eax
    3abd:	66 89 46 f8          	mov    %eax,-0x8(%bp)
    3ac1:	66 89 46 f4          	mov    %eax,-0xc(%bp)
    3ac5:	66 c7 46 ec 03 00 00 	movl   $0x3,-0x14(%bp)
    3acc:	00 
    3acd:	8e 46 10             	mov    0x10(%bp),%es
    3ad0:	8b 46 ec             	mov    -0x14(%bp),%ax
    3ad3:	d1 e0                	shl    $1,%ax
    3ad5:	8b 5e 0e             	mov    0xe(%bp),%bx
    3ad8:	03 d8                	add    %ax,%bx
    3ada:	66 26 0f bf 07       	movswl %es:(%bx),%eax
    3adf:	66 8b d8             	mov    %eax,%ebx
    3ae2:	66 8b 46 fc          	mov    -0x4(%bp),%eax
    3ae6:	66 f7 eb             	imul   %ebx
    3ae9:	66 8b 56 04          	mov    0x4(%bp),%edx
    3aed:	66 c1 e2 08          	shl    $0x8,%edx
    3af1:	66 03 c2             	add    %edx,%eax
    3af4:	66 89 46 e8          	mov    %eax,-0x18(%bp)
    3af8:	66 8b 46 f8          	mov    -0x8(%bp),%eax
    3afc:	66 f7 eb             	imul   %ebx
    3aff:	66 8b 56 08          	mov    0x8(%bp),%edx
    3b03:	66 c1 e2 08          	shl    $0x8,%edx
    3b07:	66 03 c2             	add    %edx,%eax
    3b0a:	66 89 46 e4          	mov    %eax,-0x1c(%bp)
    3b0e:	66 8b 46 f4          	mov    -0xc(%bp),%eax
    3b12:	66 f7 eb             	imul   %ebx
    3b15:	66 8b d0             	mov    %eax,%edx
    3b18:	66 f7 da             	neg    %edx
    3b1b:	66 c1 fa 06          	sar    $0x6,%edx
    3b1f:	66 89 56 e0          	mov    %edx,-0x20(%bp)
    3b23:	66 03 46 e8          	add    -0x18(%bp),%eax
    3b27:	66 8b c8             	mov    %eax,%ecx
    3b2a:	66 8b 46 f0          	mov    -0x10(%bp),%eax
    3b2e:	66 f7 eb             	imul   %ebx
    3b31:	66 8b d0             	mov    %eax,%edx
    3b34:	66 f7 da             	neg    %edx
    3b37:	66 c1 fa 06          	sar    $0x6,%edx
    3b3b:	66 89 56 dc          	mov    %edx,-0x24(%bp)
    3b3f:	66 03 46 e4          	add    -0x1c(%bp),%eax
    3b43:	66 8b f8             	mov    %eax,%edi
    3b46:	66 8b d3             	mov    %ebx,%edx
    3b49:	66 c1 fb 07          	sar    $0x7,%ebx
    3b4d:	66 c1 fa 05          	sar    $0x5,%edx
    3b51:	2b d3                	sub    %bx,%dx
    3b53:	66 8b c1             	mov    %ecx,%eax
    3b56:	66 c1 f8 0c          	sar    $0xc,%eax
    3b5a:	25 fe 00             	and    $0xfe,%ax
    3b5d:	66 8b df             	mov    %edi,%ebx
    3b60:	66 c1 fb 07          	sar    $0x7,%ebx
    3b64:	81 e3 c0 07          	and    $0x7c0,%bx
    3b68:	03 d8                	add    %ax,%bx
    3b6a:	8b 9f b3 6d          	mov    0x6db3(%bx),%bx
    3b6e:	8a dd                	mov    %ch,%bl
    3b70:	80 e3 1f             	and    $0x1f,%bl
    3b73:	66 8b c7             	mov    %edi,%eax
    3b76:	66 c1 f8 03          	sar    $0x3,%eax
    3b7a:	25 e0 03             	and    $0x3e0,%ax
    3b7d:	03 d8                	add    %ax,%bx
    3b7f:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
    3b83:	2a c2                	sub    %dl,%al
    3b85:	88 84 b2 0b          	mov    %al,0xbb2(%si)
    3b89:	66 03 4e e0          	add    -0x20(%bp),%ecx
    3b8d:	66 03 7e dc          	add    -0x24(%bp),%edi
    3b91:	66 8b c1             	mov    %ecx,%eax
    3b94:	66 c1 f8 0c          	sar    $0xc,%eax
    3b98:	25 fe 00             	and    $0xfe,%ax
    3b9b:	66 8b df             	mov    %edi,%ebx
    3b9e:	66 c1 fb 07          	sar    $0x7,%ebx
    3ba2:	81 e3 c0 07          	and    $0x7c0,%bx
    3ba6:	03 d8                	add    %ax,%bx
    3ba8:	8b 9f b3 6d          	mov    0x6db3(%bx),%bx
    3bac:	8a dd                	mov    %ch,%bl
    3bae:	80 e3 1f             	and    $0x1f,%bl
    3bb1:	66 8b c7             	mov    %edi,%eax
    3bb4:	66 c1 f8 03          	sar    $0x3,%eax
    3bb8:	25 e0 03             	and    $0x3e0,%ax
    3bbb:	03 d8                	add    %ax,%bx
    3bbd:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
    3bc1:	2a c2                	sub    %dl,%al
    3bc3:	88 84 b2 24          	mov    %al,0x24b2(%si)
    3bc7:	46                   	inc    %si
    3bc8:	66 03 4e e0          	add    -0x20(%bp),%ecx
    3bcc:	66 03 7e dc          	add    -0x24(%bp),%edi
    3bd0:	f7 c6 3f 00          	test   $0x3f,%si
    3bd4:	74 03                	je     0x3bd9
    3bd6:	e9 7a ff             	jmp    0x3b53
    3bd9:	66 ff 46 ec          	incl   -0x14(%bp)
    3bdd:	66 83          	cmpl   $0x64,-0x14(%bp)
