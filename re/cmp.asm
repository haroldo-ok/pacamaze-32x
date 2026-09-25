; cmp @ 0x2D63 len 0x50
00002d63 <.data+0x2d63>:
    2d63:	55                   	push   %bp
    2d64:	8b ec                	mov    %sp,%bp
    2d66:	83 ec 08             	sub    $0x8,%sp
    2d69:	8b 46 0a             	mov    0xa(%bp),%ax
    2d6c:	89 46 fc             	mov    %ax,-0x4(%bp)
    2d6f:	8b 46 fc             	mov    -0x4(%bp),%ax
    2d72:	89 46 fe             	mov    %ax,-0x2(%bp)
    2d75:	d1 e0                	shl    $1,%ax
    2d77:	3b 46 08             	cmp    0x8(%bp),%ax
    2d7a:	7f 36                	jg     0x2db2
    2d7c:	8b 5e fc             	mov    -0x4(%bp),%bx
    2d7f:	d1 e3                	shl    $1,%bx
    2d81:	c1 e3 02             	shl    $0x2,%bx
    2d84:	8e 46 06             	mov    0x6(%bp),%es
    2d87:	03 5e 04             	add    0x4(%bp),%bx
    2d8a:	26 c4 5f fc          	les    %es:-0x4(%bx),%bx
    2d8e:	66 26 8b 47 18       	mov    %es:0x18(%bx),%eax
    2d93:	8b 5e fc             	mov    -0x4(%bp),%bx
    2d96:	c1 e3 02             	shl    $0x2,%bx
    2d99:	8e 46 06             	mov    0x6(%bp),%es
    2d9c:	03 5e 04             	add    0x4(%bp),%bx
    2d9f:	26 c4 5f fc          	les    %es:-0x4(%bx),%bx
    2da3:	66 26 3b 47 18       	cmp    %es:0x18(%bx),%eax
    2da8:	7d 08                	jge    0x2db2
    2daa:	8b 46 fc             	mov    -0x4(%bp),%ax
    2dad:	d1 e0                	shl    $1,%ax
    2daf:	89 46 fc             	mov    %ax,-0x4(%bp)
    2db2:	8b               	mov    -0x2(%bp),%ax
