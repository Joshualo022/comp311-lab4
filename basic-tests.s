    # addi 
    addi x4, x0, -20        
    addi x5, x4, 0x7F0      
    addi x6, x5, 0x701      
    addi x7, x6, 0x531      

    # andi  
    andi x14, x6, 0x123     
    andi x15, x14, 0x71C    
    andi x17, x15, 0x541    

    # slti 
    slti x18, x4, 311       # set x18 = (x4 < 311) ? 1 : 0
    slti x19, x18, 2        # set x19 = (x18 < 2) ? 1 : 0
    slti x20, x19, 0        # set x20 = (x19 < 0) ? 1 : 0
    slti x21, x20, -3       # set x21 = (x20 < -3) ? 1 : 0
    slti x22, x21, 5        # set x22 = (x21 < 5) ? 1 : 0
    addi x0,  x22, 0        # write to x0 is ignored (still 0)
    slti x23, x4,  -20      
    addi x0,  x23, 0
    slti x24, x11, -90     
    addi x0,  x24, 0
    slti x25, x4,  0        
    addi x0,  x25, 0
    slti x26, x11, 600      
    addi x0,  x26, 0
    slti x27, x4,  -1       
    addi x0,  x27, 0

    # add 
    add x4, x5, x6
    add x6, x4, x5
    add x6, x5, x0
    add x0, x6, x0


    # sub
    sub x4, x5, x6
    sub x6, x4, x5
    sub x6, x6, x0 
    sub x0, x6, x0

    # or
    or x4, x5, x7
    or x0, x4, x0
    or x4, x5, x6
    or x0, x4, x0
    

    # and
    and x8, x5, x7
    and x0, x8, x0
    and x8, x6, x4
    and x0, x8, x0
 
    # sll 
    addi x13, x0, 31
    addi x16, x0, 1
    sll x28, x16, x13
    addi x3, x0, 4
    sll x2, x5, x3
    addi x1, x0, 32
    sll x9, x5, x1
    add x0, x28, x2
    add x0, x9, x0
 
    # srl 
    srl x29, x28, x13
    srl x31, x6, x3
    add x0, x29, x31
 
    # sra 
    sra x30, x28, x13
    sra x31, x6, x3
    sra x10, x5, x3
    add x0, x30, x31
    srl x12, x30, x16
    add x0, x10, x12
 
    # slt 
    slt x9, x28, x12
    slt x10, x12, x28
    slt x1, x6, x5
    slt x2, x5, x6
    slt x3, x5, x5
    add x0, x9, x10
    add x0, x1, x2
    add x0, x3, x0

    sll x9, x5, x0
    add x0, x9, x0
 
