#include <stdio.h>
#include "dummy.h"
 
int main(void) {
    puts("Shared library test...");
    no_trap();
    yes_trap();
    return 0;
}
