; isr @ 0x9A0 len 0x120
000009a0 <.data+0x9a0>:
     9a0:	46                   	inc    %si
     9a1:	f0 3b 46 f6          	lock cmp -0xa(%bp),%ax
     9a5:	7c d5                	jl     0x97c
     9a7:	c9                   	leave
     9a8:	c3                   	ret
     9a9:	50                   	push   %ax
     9aa:	53                   	push   %bx
     9ab:	51                   	push   %cx
     9ac:	52                   	push   %dx
     9ad:	06                   	push   %es
     9ae:	1e                   	push   %ds
     9af:	56                   	push   %si
     9b0:	57                   	push   %di
     9b1:	55                   	push   %bp
     9b2:	bd ea 05             	mov    $0x5ea,%bp
     9b5:	8e dd                	mov    %bp,%ds
     9b7:	b4 0c                	mov    $0xc,%ah
     9b9:	b0 0b                	mov    $0xb,%al
     9bb:	cd 21                	int    $0x21
     9bd:	e4 60                	in     $0x60,%al
     9bf:	a2 ae 00             	mov    %al,0xae
     9c2:	a0 ae 00             	mov    0xae,%al
     9c5:	b4 00                	mov    $0x0,%ah
     9c7:	3d b9 00             	cmp    $0xb9,%ax
     9ca:	74 71                	je     0xa3d
     9cc:	7f 1f                	jg     0x9ed
     9ce:	3d 4b 00             	cmp    $0x4b,%ax
     9d1:	74 39                	je     0xa0c
     9d3:	7f 0c                	jg     0x9e1
     9d5:	3d 39 00             	cmp    $0x39,%ax
     9d8:	74 5c                	je     0xa36
     9da:	3d 48 00             	cmp    $0x48,%ax
     9dd:	74 1f                	je     0x9fe
     9df:	eb 61                	jmp    0xa42
     9e1:	3d 4d 00             	cmp    $0x4d,%ax
     9e4:	74 2d                	je     0xa13
     9e6:	3d 50 00             	cmp    $0x50,%ax
     9e9:	74 1a                	je     0xa05
     9eb:	eb 55                	jmp    0xa42
     9ed:	2d c8 00             	sub    $0xc8,%ax
     9f0:	8b d8                	mov    %ax,%bx
     9f2:	83 fb 08             	cmp    $0x8,%bx
     9f5:	77 4b                	ja     0xa42
     9f7:	d1 e3                	shl    $1,%bx
     9f9:	2e ff a7 51 0a       	jmp    *%cs:0xa51(%bx)
     9fe:	c6 06 af 00 01       	movb   $0x1,0xaf
     a03:	eb 3d                	jmp    0xa42
     a05:	c6 06 b0 00 01       	movb   $0x1,0xb0
     a0a:	eb 36                	jmp    0xa42
     a0c:	c6 06 b1 00 01       	movb   $0x1,0xb1
     a11:	eb 2f                	jmp    0xa42
     a13:	c6 06 b2 00 01       	movb   $0x1,0xb2
     a18:	eb 28                	jmp    0xa42
     a1a:	c6 06 af 00 00       	movb   $0x0,0xaf
     a1f:	eb 21                	jmp    0xa42
     a21:	c6 06 b0 00 00       	movb   $0x0,0xb0
     a26:	eb 1a                	jmp    0xa42
     a28:	c6 06 b1 00 00       	movb   $0x0,0xb1
     a2d:	eb 13                	jmp    0xa42
     a2f:	c6 06 b2 00 00       	movb   $0x0,0xb2
     a34:	eb 0c                	jmp    0xa42
     a36:	c6 06 b3 00 01       	movb   $0x1,0xb3
     a3b:	eb 05                	jmp    0xa42
     a3d:	c6 06 b4 00 01       	movb   $0x1,0xb4
     a42:	9c                   	pushf
     a43:	ff 1e e3 7e          	lcall  *0x7ee3
     a47:	5d                   	pop    %bp
     a48:	5f                   	pop    %di
     a49:	5e                   	pop    %si
     a4a:	1f                   	pop    %ds
     a4b:	07                   	pop    %es
     a4c:	5a                   	pop    %dx
     a4d:	59                   	pop    %cx
     a4e:	5b                   	pop    %bx
     a4f:	58                   	pop    %ax
     a50:	cf                   	iret
     a51:	1a 0a                	sbb    (%bp,%si),%cl
     a53:	42                   	inc    %dx
     a54:	0a 42 0a             	or     0xa(%bp,%si),%al
     a57:	28 0a                	sub    %cl,(%bp,%si)
     a59:	42                   	inc    %dx
     a5a:	0a 2f                	or     (%bx),%ch
     a5c:	0a 42 0a             	or     0xa(%bp,%si),%al
     a5f:	42                   	inc    %dx
     a60:	0a 21                	or     (%bx,%di),%ah
     a62:	0a 55 8b             	or     -0x75(%di),%dl
     a65:	ec                   	in     (%dx),%al
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
     abf:	80           	cmpb   $0x0,0x69b3(%bx)
