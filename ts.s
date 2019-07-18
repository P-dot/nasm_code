       .globl  running, scheduler, tswitch
tswitch:
SAVE:   pushl %eax 
        pushl %ebx
        pu