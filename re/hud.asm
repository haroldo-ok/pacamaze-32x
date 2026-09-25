; hud @ 0x3C14 len 0xB0
00003c14 <.data+0x3c14>:
    3c14:	55                   	push   %bp
    3c15:	8b ec                	mov    %sp,%bp
    3c17:	83 ec 04             	sub    $0x4,%sp
    3c1a:	56                   	push   %si
    3c1b:	57                   	push   %di
    3c1c:	1e                   	push   %ds
    3c1d:	c5 76 04             	lds    0x4(%bp),%si
    3c20:	89 76 fe             	mov    %si,-0x2(%bp)
    3c23:	8b 46 08             	mov    0x8(%bp),%ax
    3c26:	05 00 a0             	add    $0xa000,%ax
    3c29:	8e c0                	mov    %ax,%es
    3c2b:	b8 02 03             	mov    $0x302,%ax
    3c2e:	ba c4 03             	mov    $0x3c4,%dx
    3c31:	ef                   	out    %ax,(%dx)
    3c32:	bf 40 1f             	mov    $0x1f40,%di
    3c35:	bb 64 00             	mov    $0x64,%bx
    3c38:	b9 10 00             	mov    $0x10,%cx
    3c3b:	f3 66 a5             	rep movsl %ds:(%si),%es:(%di)
    3c3e:	83 c7 10             	add    $0x10,%di
    3c41:	4b                   	dec    %bx
    3c42:	75 f4                	jne    0x3c38
    3c44:	b8 02 0c             	mov    $0xc02,%ax
    3c47:	ba c4 03             	mov    $0x3c4,%dx
    3c4a:	ef                   	out    %ax,(%dx)
    3c4b:	bf 40 1f             	mov    $0x1f40,%di
    3c4e:	bb 64 00             	mov    $0x64,%bx
    3c51:	b9 10 00             	mov    $0x10,%cx
    3c54:	f3 66 a5             	rep movsl %ds:(%si),%es:(%di)
    3c57:	83 c7 10             	add    $0x10,%di
    3c5a:	4b                   	dec    %bx
    3c5b:	75 f4                	jne    0x3c51
    3c5d:	1f                   	pop    %ds
    3c5e:	5f                   	pop    %di
    3c5f:	5e                   	pop    %si
    3c60:	c9                   	leave
    3c61:	c3                   	ret
    3c62:	66 50                	push   %eax
    3c64:	66 53                	push   %ebx
    3c66:	66 51                	push   %ecx
    3c68:	66 52                	push   %edx
    3c6a:	06                   	push   %es
    3c6b:	1e                   	push   %ds
    3c6c:	66 56                	push   %esi
    3c6e:	66 57                	push   %edi
    3c70:	66 55                	push   %ebp
    3c72:	bd ea 05             	mov    $0x5ea,%bp
    3c75:	8e dd                	mov    %bp,%ds
    3c77:	83 3e a8 00 00       	cmpw   $0x0,0xa8
    3c7c:	74 04                	je     0x3c82
    3c7e:	ff 06 ac 00          	incw   0xac
    3c82:	66 a1 eb 7e          	mov    0x7eeb,%eax
    3c86:	66 03 06 ef 7e       	add    0x7eef,%eax
    3c8b:	66 a3 eb 7e          	mov    %eax,0x7eeb
    3c8f:	66 81 3e eb 7e 00 00 	cmpl   $0x10000,0x7eeb
    3c96:	01 00 
    3c98:	7c 0f                	jl     0x3ca9
    3c9a:	66 05 00 00 ff ff    	add    $0xffff0000,%eax
    3ca0:	66 a3 eb 7e          	mov    %eax,0x7eeb
    3ca4:	9c                   	pushf
    3ca5:	ff 1e e7 7e          	lcall  *0x7ee7
    3ca9:	ba 20 00             	mov    $0x20,%dx
    3cac:	b0 20                	mov    $0x20,%al
    3cae:	ee                   	out    %al,(%dx)
    3caf:	66 5d                	pop    %ebp
    3cb1:	66 5f                	pop    %edi
    3cb3:	66 5e                	pop    %esi
    3cb5:	1f                   	pop    %ds
    3cb6:	07                   	pop    %es
    3cb7:	66 5a                	pop    %edx
    3cb9:	66 59                	pop    %ecx
    3cbb:	66 5b                	pop    %ebx
    3cbd:	66 58                	pop    %eax
    3cbf:	cf                   	iret
    3cc0:	55                   	push   %bp
    3cc1:	8b ec                	mov    %sp,%bp
    3cc3:	83               	sub    $0x2,%sp
