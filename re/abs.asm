; abs @ 0x1F48 len 0x20
00001f48 <.data+0x1f48>:
    1f48:	55                   	push   %bp
    1f49:	8b ec                	mov    %sp,%bp
    1f4b:	8b 46 04             	mov    0x4(%bp),%ax
    1f4e:	99                   	cwtd
    1f4f:	33 c2                	xor    %dx,%ax
    1f51:	2b c2                	sub    %dx,%ax
    1f53:	5d                   	pop    %bp
    1f54:	c3                   	ret
    1f55:	55                   	push   %bp
    1f56:	8b ec                	mov    %sp,%bp
    1f58:	e8 c5 24             	call   0x4420
    1f5b:	66 0f bf c0          	movswl %ax,%eax
    1f5f:	66 0f bf 56 04       	movswl 0x4(%bp),%edx
    1f64:	66 0f af c2          	imul   %edx,%eax
