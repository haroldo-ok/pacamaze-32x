; methods @ 0x29C0 len 0x2E0
000029c0 <.data+0x29c0>:
    29c0:	46                   	inc    %si
    29c1:	ea 7e 03 e9 7a       	ljmp   $0x7ae9,$0x37e
    29c6:	ff c9                	dec    %cx
    29c8:	c3                   	ret
    29c9:	55                   	push   %bp
    29ca:	8b ec                	mov    %sp,%bp
    29cc:	56                   	push   %si
    29cd:	c4 5e 04             	les    0x4(%bp),%bx
    29d0:	06                   	push   %es
    29d1:	c4 76 08             	les    0x8(%bp),%si
    29d4:	26 8b 04             	mov    %es:(%si),%ax
    29d7:	07                   	pop    %es
    29d8:	26 2b 47 02          	sub    %es:0x2(%bx),%ax
    29dc:	50                   	push   %ax
    29dd:	e8 14 05             	call   0x2ef4
    29e0:	83 c4 02             	add    $0x2,%sp
    29e3:	3d 0a 00             	cmp    $0xa,%ax
    29e6:	7d 1f                	jge    0x2a07
    29e8:	c4 5e 08             	les    0x8(%bp),%bx
    29eb:	26 8b 47 04          	mov    %es:0x4(%bx),%ax
    29ef:	c4 5e 04             	les    0x4(%bp),%bx
    29f2:	26 2b 47 06          	sub    %es:0x6(%bx),%ax
    29f6:	50                   	push   %ax
    29f7:	e8 fa 04             	call   0x2ef4
    29fa:	83 c4 02             	add    $0x2,%sp
    29fd:	3d 0a 00             	cmp    $0xa,%ax
    2a00:	7d 05                	jge    0x2a07
    2a02:	b8 01 00             	mov    $0x1,%ax
    2a05:	eb 02                	jmp    0x2a09
    2a07:	33 c0                	xor    %ax,%ax
    2a09:	5e                   	pop    %si
    2a0a:	5d                   	pop    %bp
    2a0b:	c3                   	ret
    2a0c:	55                   	push   %bp
    2a0d:	8b ec                	mov    %sp,%bp
    2a0f:	c4 5e 04             	les    0x4(%bp),%bx
    2a12:	26 8b 47 1c          	mov    %es:0x1c(%bx),%ax
    2a16:	3d 01 00             	cmp    $0x1,%ax
    2a19:	74 25                	je     0x2a40
    2a1b:	7f 0c                	jg     0x2a29
    2a1d:	3d e0 ff             	cmp    $0xffe0,%ax
    2a20:	74 2e                	je     0x2a50
    2a22:	3d ff ff             	cmp    $0xffff,%ax
    2a25:	74 09                	je     0x2a30
    2a27:	5d                   	pop    %bp
    2a28:	c3                   	ret
    2a29:	3d 20 00             	cmp    $0x20,%ax
    2a2c:	74 32                	je     0x2a60
    2a2e:	5d                   	pop    %bp
    2a2f:	c3                   	ret
    2a30:	c4 5e 04             	les    0x4(%bp),%bx
    2a33:	66 26 0f bf 47 22    	movswl %es:0x22(%bx),%eax
    2a39:	66 26 29 47 02       	sub    %eax,%es:0x2(%bx)
    2a3e:	5d                   	pop    %bp
    2a3f:	c3                   	ret
    2a40:	c4 5e 04             	les    0x4(%bp),%bx
    2a43:	66 26 0f bf 47 22    	movswl %es:0x22(%bx),%eax
    2a49:	66 26 01 47 02       	add    %eax,%es:0x2(%bx)
    2a4e:	5d                   	pop    %bp
    2a4f:	c3                   	ret
    2a50:	c4 5e 04             	les    0x4(%bp),%bx
    2a53:	66 26 0f bf 47 22    	movswl %es:0x22(%bx),%eax
    2a59:	66 26 29 47 06       	sub    %eax,%es:0x6(%bx)
    2a5e:	5d                   	pop    %bp
    2a5f:	c3                   	ret
    2a60:	c4 5e 04             	les    0x4(%bp),%bx
    2a63:	66 26 0f bf 47 22    	movswl %es:0x22(%bx),%eax
    2a69:	66 26 01 47 06       	add    %eax,%es:0x6(%bx)
    2a6e:	5d                   	pop    %bp
    2a6f:	c3                   	ret
    2a70:	55                   	push   %bp
    2a71:	8b ec                	mov    %sp,%bp
    2a73:	83 ec 10             	sub    $0x10,%sp
    2a76:	c4 5e 04             	les    0x4(%bp),%bx
    2a79:	8b 46 08             	mov    0x8(%bp),%ax
    2a7c:	26 2b 47 02          	sub    %es:0x2(%bx),%ax
    2a80:	89 46 fe             	mov    %ax,-0x2(%bp)
    2a83:	8b 46 0c             	mov    0xc(%bp),%ax
    2a86:	26 2b 47 06          	sub    %es:0x6(%bx),%ax
    2a8a:	89 46 fc             	mov    %ax,-0x4(%bp)
    2a8d:	66 26 8b 47 02       	mov    %es:0x2(%bx),%eax
    2a92:	66 c1 f8 05          	sar    $0x5,%eax
    2a96:	89 46 fa             	mov    %ax,-0x6(%bp)
    2a99:	66 26 8b 47 06       	mov    %es:0x6(%bx),%eax
    2a9e:	66 c1 f8 05          	sar    $0x5,%eax
    2aa2:	c1 e0 05             	shl    $0x5,%ax
    2aa5:	89 46 f8             	mov    %ax,-0x8(%bp)
    2aa8:	26 c7 47 1e 01 00    	movw   $0x1,%es:0x1e(%bx)
    2aae:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    2ab2:	75 0a                	jne    0x2abe
    2ab4:	83 7e fc 00          	cmpw   $0x0,-0x4(%bp)
    2ab8:	75 04                	jne    0x2abe
    2aba:	33 c0                	xor    %ax,%ax
    2abc:	c9                   	leave
    2abd:	c3                   	ret
    2abe:	ff 76 fe             	push   -0x2(%bp)
    2ac1:	e8 30 04             	call   0x2ef4
    2ac4:	83 c4 02             	add    $0x2,%sp
    2ac7:	50                   	push   %ax
    2ac8:	ff 76 fc             	push   -0x4(%bp)
    2acb:	e8 26 04             	call   0x2ef4
    2ace:	83 c4 02             	add    $0x2,%sp
    2ad1:	5a                   	pop    %dx
    2ad2:	3b d0                	cmp    %ax,%dx
    2ad4:	7e 27                	jle    0x2afd
    2ad6:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    2ada:	7c 05                	jl     0x2ae1
    2adc:	b8 01 00             	mov    $0x1,%ax
    2adf:	eb 03                	jmp    0x2ae4
    2ae1:	b8 ff ff             	mov    $0xffff,%ax
    2ae4:	89 46 f6             	mov    %ax,-0xa(%bp)
    2ae7:	83 7e fc 00          	cmpw   $0x0,-0x4(%bp)
    2aeb:	7c 05                	jl     0x2af2
    2aed:	b8 01 00             	mov    $0x1,%ax
    2af0:	eb 03                	jmp    0x2af5
    2af2:	b8 ff ff             	mov    $0xffff,%ax
    2af5:	c1 e0 05             	shl    $0x5,%ax
    2af8:	89 46 f4             	mov    %ax,-0xc(%bp)
    2afb:	eb 25                	jmp    0x2b22
    2afd:	83 7e fc 00          	cmpw   $0x0,-0x4(%bp)
    2b01:	7c 05                	jl     0x2b08
    2b03:	b8 01 00             	mov    $0x1,%ax
    2b06:	eb 03                	jmp    0x2b0b
    2b08:	b8 ff ff             	mov    $0xffff,%ax
    2b0b:	c1 e0 05             	shl    $0x5,%ax
    2b0e:	89 46 f6             	mov    %ax,-0xa(%bp)
    2b11:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    2b15:	7c 05                	jl     0x2b1c
    2b17:	b8 01 00             	mov    $0x1,%ax
    2b1a:	eb 03                	jmp    0x2b1f
    2b1c:	b8 ff ff             	mov    $0xffff,%ax
    2b1f:	89 46 f4             	mov    %ax,-0xc(%bp)
    2b22:	8b 46 fa             	mov    -0x6(%bp),%ax
    2b25:	03 46 f8             	add    -0x8(%bp),%ax
    2b28:	89 46 f2             	mov    %ax,-0xe(%bp)
    2b2b:	8b 5e f2             	mov    -0xe(%bp),%bx
    2b2e:	03 5e f6             	add    -0xa(%bp),%bx
    2b31:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    2b36:	75 08                	jne    0x2b40
    2b38:	8b 46 f6             	mov    -0xa(%bp),%ax
    2b3b:	89 46 f0             	mov    %ax,-0x10(%bp)
    2b3e:	eb 4e                	jmp    0x2b8e
    2b40:	8b 5e f2             	mov    -0xe(%bp),%bx
    2b43:	03 5e f4             	add    -0xc(%bp),%bx
    2b46:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    2b4b:	75 08                	jne    0x2b55
    2b4d:	8b 46 f4             	mov    -0xc(%bp),%ax
    2b50:	89 46 f0             	mov    %ax,-0x10(%bp)
    2b53:	eb 39                	jmp    0x2b8e
    2b55:	8b 5e f2             	mov    -0xe(%bp),%bx
    2b58:	2b 5e f4             	sub    -0xc(%bp),%bx
    2b5b:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    2b60:	75 0a                	jne    0x2b6c
    2b62:	8b 46 f4             	mov    -0xc(%bp),%ax
    2b65:	f7 d8                	neg    %ax
    2b67:	89 46 f0             	mov    %ax,-0x10(%bp)
    2b6a:	eb 22                	jmp    0x2b8e
    2b6c:	8b 5e f2             	mov    -0xe(%bp),%bx
    2b6f:	2b 5e f6             	sub    -0xa(%bp),%bx
    2b72:	80 bf b3 69 00       	cmpb   $0x0,0x69b3(%bx)
    2b77:	75 0a                	jne    0x2b83
    2b79:	8b 46 f6             	mov    -0xa(%bp),%ax
    2b7c:	f7 d8                	neg    %ax
    2b7e:	89 46 f0             	mov    %ax,-0x10(%bp)
    2b81:	eb 0b                	jmp    0x2b8e
    2b83:	33 c0                	xor    %ax,%ax
    2b85:	c9                   	leave
    2b86:	c3                   	ret
    2b87:	c4 5e 04             	les    0x4(%bp),%bx
    2b8a:	26 ff 47 1e          	incw   %es:0x1e(%bx)
    2b8e:	c4 5e 04             	les    0x4(%bp),%bx
    2b91:	26 8b 57 1e          	mov    %es:0x1e(%bx),%dx
    2b95:	42                   	inc    %dx
    2b96:	8b 46 f0             	mov    -0x10(%bp),%ax
    2b99:	f7 ea                	imul   %dx
    2b9b:	8b 5e f2             	mov    -0xe(%bp),%bx
    2b9e:	03 d8                	add    %ax,%bx
    2ba0:	8a 87 b3 69          	mov    0x69b3(%bx),%al
    2ba4:	b4 00                	mov    $0x0,%ah
    2ba6:	0b c0                	or     %ax,%ax
    2ba8:	74 dd                	je     0x2b87
    2baa:	8b 5e 04             	mov    0x4(%bp),%bx
    2bad:	26 ff 77 1e          	push   %es:0x1e(%bx)
    2bb1:	e8 a1 f3             	call   0x1f55
    2bb4:	83 c4 02             	add    $0x2,%sp
    2bb7:	40                   	inc    %ax
    2bb8:	c4 5e 04             	les    0x4(%bp),%bx
    2bbb:	26 89 47 1e          	mov    %ax,%es:0x1e(%bx)
    2bbf:	8b 46 f0             	mov    -0x10(%bp),%ax
    2bc2:	c9                   	leave
    2bc3:	c3                   	ret
    2bc4:	55                   	push   %bp
    2bc5:	8b ec                	mov    %sp,%bp
    2bc7:	c4 5e 04             	les    0x4(%bp),%bx
    2bca:	66 26 8b 47 02       	mov    %es:0x2(%bx),%eax
    2bcf:	66 bb 20 00 00 00    	mov    $0x20,%ebx
    2bd5:	66 99                	cltd
    2bd7:	66 f7 fb             	idiv   %ebx
    2bda:	66 83 fa 10          	cmp    $0x10,%edx
    2bde:	75 20                	jne    0x2c00
    2be0:	8b 5e 04             	mov    0x4(%bp),%bx
    2be3:	66 26 8b 47 06       	mov    %es:0x6(%bx),%eax
    2be8:	66 bb 20 00 00 00    	mov    $0x20,%ebx
    2bee:	66 99                	cltd
    2bf0:	66 f7 fb             	idiv   %ebx
    2bf3:	66 83 fa 10          	cmp    $0x10,%edx
    2bf7:	75 07                	jne    0x2c00
    2bf9:	8b 5e 04             	mov    0x4(%bp),%bx
    2bfc:	26 ff 4f 1e          	decw   %es:0x1e(%bx)
    2c00:	c4 5e 04             	les    0x4(%bp),%bx
    2c03:	26 83 7f 1e 00       	cmpw   $0x0,%es:0x1e(%bx)
    2c08:	75 1c                	jne    0x2c26
    2c0a:	8d 46 08             	lea    0x8(%bp),%ax
    2c0d:	8c d2                	mov    %ss,%dx
    2c0f:	b9 08 00             	mov    $0x8,%cx
    2c12:	e8 e9 15             	call   0x41fe
    2c15:	66 ff 76 04          	pushl  0x4(%bp)
    2c19:	e8 54 fe             	call   0x2a70
    2c1c:	83 c4 0c             	add    $0xc,%sp
    2c1f:	c4 5e 04             	les    0x4(%bp),%bx
    2c22:	26 89 47 1c          	mov    %ax,%es:0x1c(%bx)
    2c26:	66 ff 76 04          	pushl  0x4(%bp)
    2c2a:	e8 df fd             	call   0x2a0c
    2c2d:	83 c4 04             	add    $0x4,%sp
    2c30:	c4 5e 04             	les    0x4(%bp),%bx
    2c33:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
    2c37:	2b 46 08             	sub    0x8(%bp),%ax
    2c3a:	50                   	push   %ax
    2c3b:	e8 b6 02             	call   0x2ef4
    2c3e:	83 c4 02             	add    $0x2,%sp
    2c41:	3d 10 00             	cmp    $0x10,%ax
    2c44:	7f 1b                	jg     0x2c61
    2c46:	c4 5e 04             	les    0x4(%bp),%bx
    2c49:	26 8b 47 06          	mov    %es:0x6(%bx),%ax
    2c4d:	2b 46 0c             	sub    0xc(%bp),%ax
    2c50:	50                   	push   %ax
    2c51:	e8 a0 02             	call   0x2ef4
    2c54:	83 c4 02             	add    $0x2,%sp
    2c57:	3d 10 00             	cmp    $0x10,%ax
    2c5a:	7f 05                	jg     0x2c61
    2c5c:	b8 01 00             	mov    $0x1,%ax
    2c5f:	eb 02                	jmp    0x2c63
    2c61:	33 c0                	xor    %ax,%ax
    2c63:	5d                   	pop    %bp
    2c64:	c3                   	ret
    2c65:	55                   	push   %bp
    2c66:	8b ec                	mov    %sp,%bp
    2c68:	83 ec 0c             	sub    $0xc,%sp
    2c6b:	66 ff 76 0c          	pushl  0xc(%bp)
    2c6f:	16                   	push   %ss
    2c70:	8d 46 f8             	lea    -0x8(%bp),%ax
    2c73:	50                   	push   %ax
    2c74:	e8 fc f1             	call   0x1e73
    2c77:	83 c4 08             	add    $0x8,%sp
    2c7a:	16                   	push   %ss
    2c7b:	8d 46 f8             	lea    -0x8(%bp),%ax
    2c7e:	50                   	push   %ax
    2c7f:	e8 2a f2             	call   0x1eac
    2c82:	83 c4 04             	add    $0x4,%sp
    2c85:	8b d8                	mov    %ax,%bx
    2c87:	8e c2                	mov    %dx,%es
    2c89:	26 8b 47 02          	mov    %es:0x2(%bx),%ax
    2c8d:	26 8b 17             	mov    %es:(%bx),%dx
    2c90:	89 46 f6             	mov    %ax,-0xa(%bp)
    2c93:	89 56 f4             	mov    %dx,-0xc(%bp)
    2c96:	50                   	push   %ax
    2c97:	52                   	push   %dx
    2c98:	c4 5e f4             	les    -0xc(%bp),%bx
    2c9b:	26 8b 1f             	mov    %es:(%bx),%bx
    2c9e:	ff 57              	call   *0x4(%bx)
