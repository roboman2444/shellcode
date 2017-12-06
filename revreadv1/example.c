#include <stdio.h>
#include <string.h>

const char code[] = 
#include "shellcode.h"
;
int main()
{
    printf("Length: %d bytes\n", sizeof(code));
    (*(void(*)()) code)();
    return 0;
}
