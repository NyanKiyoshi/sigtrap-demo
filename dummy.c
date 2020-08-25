#include <stdio.h>
#include "debugbreak.h"
 
 
void no_trap(void) {
    puts("This function doesn't trigger a SIGTRAP");
}
 
void yes_trap(void) {
	debug_break();
    puts("SIGTRAP is over");
}
