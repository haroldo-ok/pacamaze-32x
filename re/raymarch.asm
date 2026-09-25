; raymarch @ 0x3CC0 len 0x200
00003cc0 <.data+0x3cc0>:
    3cc0:	55                   	push   %bp
    3cc1:	8b ec                	mov    %sp,%bp
    3cc3:	83 ec 02             	sub    $0x2,%sp
    3cc6:	56                   	push   %si
    3cc7:	57                   	push   %di
    3cc8:	66 8b 46 08          	mov    0x8(%bp),%eax
    3ccc:	66 8b 4e 10          	mov    0x10(%bp),%ecx
    3cd0:	66 d1 e1             	shl    $1,%ecx
    3cd3:	66 8b 7e 14          	mov    0x14(%bp),%edi
    3cd7:	66 d1 e7             	shl    $1,%edi
    3cda:	be 00 00             	mov    $0x0,%si
    3cdd:	83 c6 08             	add    $0x8,%si
    3ce0:	66 03 c1             	add    %ecx,%eax
    3ce3:	66 01 7e 0c          	add    %edi,0xc(%bp)
    3ce7:	66 8b d8             	mov    %eax,%ebx
    3cea:	66 c1 fb 15          	sar    $0x15,%ebx
    3cee:	8b 56 0e             	mov    0xe(%bp),%dx
    3cf1:	81 e2 e0 ff          	and    $0xffe0,%dx
    3cf5:	0b da                	or     %dx,%bx
    3cf7:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    3cfc:	74 df                	je     0x3cdd
    3cfe:	8a 9f b3 69          	mov    0x69b3(%bx),%bl
    3d02:	88 5e fe             	mov    %bl,-0x2(%bp)
    3d05:	66 d1 f9             	sar    $1,%ecx
    3d08:	66 d1 ff             	sar    $1,%edi
    3d0b:	66 2b c1             	sub    %ecx,%eax
    3d0e:	66 29 7e 0c          	sub    %edi,0xc(%bp)
    3d12:	66 8b d8             	mov    %eax,%ebx
    3d15:	66 c1 fb 15          	sar    $0x15,%ebx
    3d19:	8b 56 0e             	mov    0xe(%bp),%dx
    3d1c:	81 e2 e0 ff          	and    $0xffe0,%dx
    3d20:	0b da                	or     %dx,%bx
    3d22:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    3d27:	74 0c                	je     0x3d35
    3d29:	90                   	nop
    3d2a:	90                   	nop
    3d2b:	8a 9f b3 69          	mov    0x69b3(%bx),%bl
    3d2f:	83 ee 04             	sub    $0x4,%si
    3d32:	eb 0b                	jmp    0x3d3f
    3d34:	90                   	nop
    3d35:	8a 5e fe             	mov    -0x2(%bp),%bl
    3d38:	66 03 c1             	add    %ecx,%eax
    3d3b:	66 01 7e 0c          	add    %edi,0xc(%bp)
    3d3f:	66 8b d0             	mov    %eax,%edx
    3d42:	66 2b d1             	sub    %ecx,%edx
    3d45:	66 c1 f8 10          	sar    $0x10,%eax
    3d49:	8b c8                	mov    %ax,%cx
    3d4b:	66 c1 fa 15          	sar    $0x15,%edx
    3d4f:	66 c1 f8 05          	sar    $0x5,%eax
    3d53:	3b c2                	cmp    %dx,%ax
    3d55:	74 05                	je     0x3d5c
    3d57:	90                   	nop
    3d58:	90                   	nop
    3d59:	8b 4e 0e             	mov    0xe(%bp),%cx
    3d5c:	83 e1 1f             	and    $0x1f,%cx
    3d5f:	c1 e1 05             	shl    $0x5,%cx
    3d62:	c4 7e 04             	les    0x4(%bp),%di
    3d65:	26 89 35             	mov    %si,%es:(%di)
    3d68:	26 89 5d 02          	mov    %bx,%es:0x2(%di)
    3d6c:	26 89 4d 04          	mov    %cx,%es:0x4(%di)
    3d70:	5f                   	pop    %di
    3d71:	5e                   	pop    %si
    3d72:	c9                   	leave
    3d73:	c3                   	ret
    3d74:	eb 10                	jmp    0x3d86
    3d76:	66 8b 46 18          	mov    0x18(%bp),%eax
    3d7a:	66 01 46 10          	add    %eax,0x10(%bp)
    3d7e:	66 8b 46 1c          	mov    0x1c(%bp),%eax
    3d82:	66 01 46 14          	add    %eax,0x14(%bp)
    3d86:	66 8b 46 10          	mov    0x10(%bp),%eax
    3d8a:	66 c1 f8 15          	sar    $0x15,%eax
    3d8e:	66 8b 56 14          	mov    0x14(%bp),%edx
    3d92:	66 c1 fa 10          	sar    $0x10,%edx
    3d96:	66 89 56 f4          	mov    %edx,-0xc(%bp)
    3d9a:	83 e2 e0             	and    $0xffe0,%dx
    3d9d:	0b c2                	or     %dx,%ax
    3d9f:	c4 1e b3 69          	les    0x69b3,%bx
    3da3:	03 d8                	add    %ax,%bx
    3da5:	89 5e f2             	mov    %bx,-0xe(%bp)
    3da8:	26 8a 07             	mov    %es:(%bx),%al
    3dab:	b4 00                	mov    $0x0,%ah
    3dad:	0b c0                	or     %ax,%ax
    3daf:	74 c5                	je     0x3d76
    3db1:	66 8b 46 10          	mov    0x10(%bp),%eax
    3db5:	66 c1 f8 10          	sar    $0x10,%eax
    3db9:	89 46 fc             	mov    %ax,-0x4(%bp)
    3dbc:	66 8b 46 f4          	mov    -0xc(%bp),%eax
    3dc0:	89 46 fe             	mov    %ax,-0x2(%bp)
    3dc3:	66 0f bf 46 04       	movswl 0x4(%bp),%eax
    3dc8:	66 0f bf 56 fc       	movswl -0x4(%bp),%edx
    3dcd:	66 0f af c2          	imul   %edx,%eax
    3dd1:	66 0f bf 56 06       	movswl 0x6(%bp),%edx
    3dd6:	66 0f bf 5e fe       	movswl -0x2(%bp),%ebx
    3ddb:	66 0f af d3          	imul   %ebx,%edx
    3ddf:	66 03 c2             	add    %edx,%eax
    3de2:	66 03 46 08          	add    0x8(%bp),%eax
    3de6:	66 c1 f8 06          	sar    $0x6,%eax
    3dea:	66 89 46 f8          	mov    %eax,-0x8(%bp)
    3dee:	66 83 7e f8 00       	cmpl   $0x0,-0x8(%bp)
    3df3:	74 05                	je     0x3dfa
    3df5:	8b 46 f8             	mov    -0x8(%bp),%ax
    3df8:	eb 03                	jmp    0x3dfd
    3dfa:	b8 01 00             	mov    $0x1,%ax
    3dfd:	c4 5e 0c             	les    0xc(%bp),%bx
    3e00:	26 89 07             	mov    %ax,%es:(%bx)
    3e03:	8e 06 b5 69          	mov    0x69b5,%es
    3e07:	8b 5e f2             	mov    -0xe(%bp),%bx
    3e0a:	26 8a 07             	mov    %es:(%bx),%al
    3e0d:	b4 00                	mov    $0x0,%ah
    3e0f:	c4 5e 0c             	les    0xc(%bp),%bx
    3e12:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
    3e16:	66 8b 46 fc          	mov    -0x4(%bp),%eax
    3e1a:	66 26 89 47 04       	mov    %eax,%es:0x4(%bx)
    3e1f:	c9                   	leave
    3e20:	c3                   	ret
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
