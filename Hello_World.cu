#include <stdio.h>
#include <cuda_runtime.h>

#define N 16 // thread

// CUDA kernel
__global__ void helloFromGPU(int *array)
{
    int idx = threadIdx.x + blockIdx.x * blockDim.x;

    printf("Hello World in thread %d in block %d. Array value: %d\n", threadIdx.x, blockIdx.x, array[idx]);
}

int main()
{

    int threadsPerBlock = 4;
    int numBlocks = 3;

    int h_array[N] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    int *d_array;

    // allocate memory
    cudaMalloc((void **)&d_array, N * sizeof(int));

    // Copy data from host to device
    cudaMemcpy(d_array, h_array, N * sizeof(int), cudaMemcpyHostToDevice);

    helloFromGPU<<<numBlocks, threadsPerBlock>>>(d_array);

    cudaDeviceSynchronize();

    cudaFree(d_array);

    return 0;
}
