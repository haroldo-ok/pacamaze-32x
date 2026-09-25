; timerisr @ 0x3C6A len 0x60
00003c6a <.data+0x3c6a>:
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
    3cc3:	83 ec 02             	sub    $0x2,%sp
    3cc6:	56                   	push   %si
    3cc7:	57                   	push   %di
    3cc8:	66 8b            	mov    0x8(%bp),%eax
