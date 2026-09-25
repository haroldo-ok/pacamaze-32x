; texmap @ 0x691 len 0x48
00000691 <.data+0x691>:
     691:	55                   	push   %bp
     692:	8b ec                	mov    %sp,%bp
     694:	57                   	push   %di
     695:	8b 46 0a             	mov    0xa(%bp),%ax
     698:	05 00 a0             	add    $0xa000,%ax
     69b:	8e c0                	mov    %ax,%es
     69d:	8b 46 06             	mov    0x6(%bp),%ax
     6a0:	8b d8                	mov    %ax,%bx
     6a2:	c1 e0 06             	shl    $0x6,%ax
     6a5:	c1 e3 04             	shl    $0x4,%bx
     6a8:	03 c3                	add    %bx,%ax
     6aa:	8b 7e 04             	mov    0x4(%bp),%di
     6ad:	c1 ef 02             	shr    $0x2,%di
     6b0:	03 f8                	add    %ax,%di
     6b2:	8b 56 0c             	mov    0xc(%bp),%dx
     6b5:	bb 00 00             	mov    $0x0,%bx
     6b8:	8b 4e 08             	mov    0x8(%bp),%cx
     6bb:	8b da                	mov    %dx,%bx
     6bd:	c1 eb 0b             	shr    $0xb,%bx
     6c0:	03 5e 10             	add    0x10(%bp),%bx
     6c3:	8a 87 b3 3d          	mov    0x3db3(%bx),%al
     6c7:	2a 46 12             	sub    0x12(%bp),%al
     6ca:	26 88 05             	mov    %al,%es:(%di)
     6cd:	83 c7 50             	add    $0x50,%di
     6d0:	03 56 0e             	add    0xe(%bp),%dx
     6d3:	49                   	dec    %cx
     6d4:	75 e5                	jne    0x6bb
     6d6:	5f                   	pop    %di
     6d7:	5d                   	pop    %bp
     6d8:	c3                   	ret
