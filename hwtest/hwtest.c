#include <stdio.h>
#include <dlfcn.h>
#include <string.h>
#include <pthread.h>
#include <errno.h>
#include <limits.h>

int main(int argc, char *argv[])
{
  void *handle;
  handle = dlopen(argv[1], RTLD_NOW);
  if (handle == NULL) {
    printf("Error\n");
  }

  printf("End\n");

  return 0;
}
