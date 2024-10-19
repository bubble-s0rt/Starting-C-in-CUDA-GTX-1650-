#include <stdio.h>


__global__ void helloFromGPU()
{
    printf("Hello World from the GPU!\n");
}

int main()
{
   
    printf("Hello World from the CPU!\n");

    //launch kernel
    helloFromGPU<<<1, 1>>>();
    
    cudaDeviceSynchronize();

    return 0;
}
