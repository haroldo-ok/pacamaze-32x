; floorB2 @ 0x3F70 len 0x90
00003f70 <.data+0x3f70>:
    3f70:	80 e3 1f             	and    $0x1f,%bl
    3f73:	66 8b c7             	mov    %edi,%eax
    3f76:	66 c1 f8 03          	sar    $0x3,%eax
    3f7a:	25 e0 03             	and    $0x3e0,%ax
    3f7d:	03 d8                	add    %ax,%bx
    3f7f:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
    3f83:	2a c2                	sub    %dl,%al
    3f85:	88 84 b2 24          	mov    %al,0x24b2(%si)
    3f89:	46                   	inc    %si
    3f8a:	66 03 4e e0          	add    -0x20(%bp),%ecx
    3f8e:	66 03 7e dc          	add    -0x24(%bp),%edi
    3f92:	f7 c6 3f 00          	test   $0x3f,%si
    3f96:	74 03                	je     0x3f9b
    3f98:	e9 4a ff             	jmp    0x3ee5
    3f9b:	66 ff 46 ec          	incl   -0x14(%bp)
    3f9f:	66 83 7e ec 64       	cmpl   $0x64,-0x14(%bp)
    3fa4:	7d 03                	jge    0x3fa9
    3fa6:	e9 b9 fe             	jmp    0x3e62
    3fa9:	c9                   	leave
    3faa:	c3                   	ret
    3fab:	55                   	push   %bp
    3fac:	8b ec                	mov    %sp,%bp
    3fae:	83 3e 54 07 20       	cmpw   $0x20,0x754
    3fb3:	75 05                	jne    0x3fba
    3fb5:	b8 01 00             	mov    $0x1,%ax
    3fb8:	eb 13                	jmp    0x3fcd
    3fba:	8b 1e 54 07          	mov    0x754,%bx
    3fbe:	d1 e3                	shl    $1,%bx
    3fc0:	8b 46 04             	mov    0x4(%bp),%ax
    3fc3:	89 87 b6 8d          	mov    %ax,-0x724a(%bx)
    3fc7:	ff 06 54 07          	incw   0x754
    3fcb:	33 c0                	xor    %ax,%ax
    3fcd:	5d                   	pop    %bp
    3fce:	c3                   	ret
    3fcf:	55                   	push   %bp
    3fd0:	8b ec                	mov    %sp,%bp
    3fd2:	ff 76 06             	push   0x6(%bp)
    3fd5:	ff 76 04             	push   0x4(%bp)
    3fd8:	e8 0d 0c             	call   0x4be8
    3fdb:	59                   	pop    %cx
    3fdc:	59                   	pop    %cx
    3fdd:	5d                   	pop    %bp
    3fde:	c3                   	ret
    3fdf:	55                   	push   %bp
    3fe0:	8b ec                	mov    %sp,%bp
    3fe2:	ff 76 06             	push   0x6(%bp)
    3fe5:	ff 76 04             	push   0x4(%bp)
    3fe8:	e8 c3 16             	call   0x56ae
    3feb:	59                   	pop    %cx
    3fec:	59                   	pop    %cx
    3fed:	50                   	push   %ax
    3fee:	ff 76 06             	push   0x6(%bp)
    3ff1:	ff 76 04             	push   0x4(%bp)
    3ff4:	b8 02 00             	mov    $0x2,%ax
    3ff7:	50                   	push   %ax
    3ff8:	e8 31 1e             	call   0x5e2c
    3ffb:	83 c4 08             	add    $0x8,%sp
    3ffe:	5d                   	pop    %bp
    3fff:	c3                   	ret
