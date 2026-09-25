; moveobjects @ 0xF06 len 0x1A0
00000f06 <.data+0xf06>:
     f06:	55                   	push   %bp
     f07:	8b ec                	mov    %sp,%bp
     f09:	83 ec 08             	sub    $0x8,%sp
     f0c:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
     f11:	c7 46 fc 01 00       	movw   $0x1,-0x4(%bp)
     f16:	eb 33                	jmp    0xf4b
     f18:	66 ff 76 04          	pushl  0x4(%bp)
     f1c:	e8 8d 0f             	call   0x1eac
     f1f:	83 c4 04             	add    $0x4,%sp
     f22:	89 56 fa             	mov    %dx,-0x6(%bp)
     f25:	89 46 f8             	mov    %ax,-0x8(%bp)
     f28:	8d 46 08             	lea    0x8(%bp),%ax
     f2b:	8c d2                	mov    %ss,%dx
     f2d:	b9 08 00             	mov    $0x8,%cx
     f30:	e8 cb 32             	call   0x41fe
     f33:	c4 5e f8             	les    -0x8(%bp),%bx
     f36:	66 26 ff 37          	pushl  %es:(%bx)
     f3a:	26 c4 1f             	les    %es:(%bx),%bx
     f3d:	26 8b 1f             	mov    %es:(%bx),%bx
     f40:	ff 17                	call   *(%bx)
     f42:	83 c4 0c             	add    $0xc,%sp
     f45:	01 46 fe             	add    %ax,-0x2(%bp)
     f48:	ff 46 fc             	incw   -0x4(%bp)
     f4b:	8b 46 fc             	mov    -0x4(%bp),%ax
     f4e:	3b 46 10             	cmp    0x10(%bp),%ax
     f51:	7e c5                	jle    0xf18
     f53:	66 ff 76 04          	pushl  0x4(%bp)
     f57:	e8 65 0f             	call   0x1ebf
     f5a:	83 c4 04             	add    $0x4,%sp
     f5d:	0b c0                	or     %ax,%ax
     f5f:	75 b0                	jne    0xf11
     f61:	8b 46 fe             	mov    -0x2(%bp),%ax
     f64:	c9                   	leave
     f65:	c3                   	ret
     f66:	55                   	push   %bp
     f67:	8b ec                	mov    %sp,%bp
     f69:	83 ec 2e             	sub    $0x2e,%sp
     f6c:	a1 df 7e             	mov    0x7edf,%ax
     f6f:	a3 b5 00             	mov    %ax,0xb5
     f72:	a3 b7 00             	mov    %ax,0xb7
     f75:	a1 e1 7e             	mov    0x7ee1,%ax
     f78:	a3 b9 00             	mov    %ax,0xb9
     f7b:	a3 bb 00             	mov    %ax,0xbb
     f7e:	a1 b5 00             	mov    0xb5,%ax
     f81:	89 46 f8             	mov    %ax,-0x8(%bp)
     f84:	a1 b7 00             	mov    0xb7,%ax
     f87:	89 46 fa             	mov    %ax,-0x6(%bp)
     f8a:	a1 b9 00             	mov    0xb9,%ax
     f8d:	89 46 fc             	mov    %ax,-0x4(%bp)
     f90:	a1 bb 00             	mov    0xbb,%ax
     f93:	89 46 fe             	mov    %ax,-0x2(%bp)
     f96:	a1 df 7e             	mov    0x7edf,%ax
     f99:	a3 bd 00             	mov    %ax,0xbd
     f9c:	a1 e1 7e             	mov    0x7ee1,%ax
     f9f:	a3 bf 00             	mov    %ax,0xbf
     fa2:	a1 df 7e             	mov    0x7edf,%ax
     fa5:	a3 c1 00             	mov    %ax,0xc1
     fa8:	a1 e1 7e             	mov    0x7ee1,%ax
     fab:	a3 c3 00             	mov    %ax,0xc3
     fae:	a1 bd 00             	mov    0xbd,%ax
     fb1:	89 46 f0             	mov    %ax,-0x10(%bp)
     fb4:	a1 bf 00             	mov    0xbf,%ax
     fb7:	89 46 f2             	mov    %ax,-0xe(%bp)
     fba:	a1 c1 00             	mov    0xc1,%ax
     fbd:	89 46 f4             	mov    %ax,-0xc(%bp)
     fc0:	a1 c3 00             	mov    0xc3,%ax
     fc3:	89 46 f6             	mov    %ax,-0xa(%bp)
     fc6:	c7 46 ee 00 00       	movw   $0x0,-0x12(%bp)
     fcb:	c7 46 ec 00 00       	movw   $0x0,-0x14(%bp)
     fd0:	66 ff 76 04          	pushl  0x4(%bp)
     fd4:	16                   	push   %ss
     fd5:	8d 46 e4             	lea    -0x1c(%bp),%ax
     fd8:	50                   	push   %ax
     fd9:	e8 97 0e             	call   0x1e73
     fdc:	83 c4 08             	add    $0x8,%sp
     fdf:	83 7e ec 00          	cmpw   $0x0,-0x14(%bp)
     fe3:	74 10                	je     0xff5
     fe5:	16                   	push   %ss
     fe6:	8d 46 e4             	lea    -0x1c(%bp),%ax
     fe9:	50                   	push   %ax
     fea:	e8 44 0f             	call   0x1f31
     fed:	83 c4 04             	add    $0x4,%sp
     ff0:	c7 46 ec 00 00       	movw   $0x0,-0x14(%bp)
     ff5:	16                   	push   %ss
     ff6:	8d 46 e4             	lea    -0x1c(%bp),%ax
     ff9:	50                   	push   %ax
     ffa:	e8 af 0e             	call   0x1eac
     ffd:	83 c4 04             	add    $0x4,%sp
    1000:	89 56 e2             	mov    %dx,-0x1e(%bp)
    1003:	89 46 e0             	mov    %ax,-0x20(%bp)
    1006:	c4 5e e0             	les    -0x20(%bp),%bx
    1009:	66 26 ff 37          	pushl  %es:(%bx)
    100d:	26 c4 1f             	les    %es:(%bx),%bx
    1010:	26 8b 1f             	mov    %es:(%bx),%bx
    1013:	ff 57 04             	call   *0x4(%bx)
    1016:	83 c4 04             	add    $0x4,%sp
    1019:	3c 62                	cmp    $0x62,%al
    101b:	75 2b                	jne    0x1048
    101d:	6a 03                	push   $0x3
    101f:	16                   	push   %ss
    1020:	8d 46 e4             	lea    -0x1c(%bp),%ax
    1023:	50                   	push   %ax
    1024:	e8 85 0e             	call   0x1eac
    1027:	83 c4 04             	add    $0x4,%sp
    102a:	8b d8                	mov    %ax,%bx
    102c:	8e c2                	mov    %dx,%es
    102e:	66 26 ff 37          	pushl  %es:(%bx)
    1032:	e8 65 16             	call   0x269a
    1035:	83 c4 06             	add    $0x6,%sp
    1038:	16                   	push   %ss
    1039:	8d 46 e4             	lea    -0x1c(%bp),%ax
    103c:	50                   	push   %ax
    103d:	e8 a8 11             	call   0x21e8
    1040:	83 c4 04             	add    $0x4,%sp
    1043:	89 46 ec             	mov    %ax,-0x14(%bp)
    1046:	eb 57                	jmp    0x109f
    1048:	16                   	push   %ss
    1049:	8d 46 e4             	lea    -0x1c(%bp),%ax
    104c:	50                   	push   %ax
    104d:	e8 5c 0e             	call   0x1eac
    1050:	83 c4 04             	add    $0x4,%sp
    1053:	89 56 de             	mov    %dx,-0x22(%bp)
    1056:	89 46 dc             	mov    %ax,-0x24(%bp)
    1059:	c4 5e dc             	les    -0x24(%bp),%bx
    105c:	66 26 ff 37          	pushl  %es:(%bx)
    1060:	26 c4 1f             	les    %es:(%bx),%bx
    1063:	26 8b 1f             	mov    %es:(%bx),%bx
    1066:	ff 57 04             	call   *0x4(%bx)
    1069:	83 c4 04             	add    $0x4,%sp
    106c:	3c 61                	cmp    $0x61,%al
    106e:	75 2f                	jne    0x109f
    1070:	83 7e 0a 00          	cmpw   $0x0,0xa(%bp)
    1074:	75 29                	jne    0x109f
    1076:	6a 03                	push   $0x3
    1078:	16                   	push   %ss
    1079:	8d 46 e4             	lea    -0x1c(%bp),%ax
    107c:	50                   	push   %ax
    107d:	e8 2c 0e             	call   0x1eac
    1080:	83 c4 04             	add    $0x4,%sp
    1083:	8b d8                	mov    %ax,%bx
    1085:	8e c2                	mov    %dx,%es
    1087:	66 26 ff 37          	pushl  %es:(%bx)
    108b:	e8 0c 16             	call   0x269a
    108e:	83 c4 06             	add    $0x6,%sp
    1091:	16                   	push   %ss
    1092:	8d 46 e4             	lea    -0x1c(%bp),%ax
    1095:	50                   	push   %ax
    1096:	e8 4f 11             	call   0x21e8
    1099:	83 c4 04             	add    $0x4,%sp
    109c:	89 46 ec             	mov    %ax,-0x14(%bp)
    109f:	66 ff 76 04          	pushl  0x4(%bp)
    10a3:	e8 e4 0e             	call   0x1f8a
