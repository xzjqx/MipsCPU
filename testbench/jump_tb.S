   .org 0x0
   .set noat
   .set noreorder
   .set nomacro
   .global _start
_start:
   ori  $1,$0,0x0001   # $1 = 0x1                
   j    0x20
   ori  $1,$0,0x0002   # $1 = 0x2
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100

   .org 0x20
   ori  $1,$0,0x0003   # $1 = 0x3               
   jal  0x40
   ori  $1,$0,0x0003   # $31 = 0x2c, $1 = 0x3

   ori  $1,$0,0x0005   # r1 = 0x5
   ori  $1,$0,0x0006   # r1 = 0x6
   j    0x60
   ori  $1,$0,0x0006

   .org 0x40
               
   jalr $2,$31                     
   or   $1,$2,$0        # $1 = 0x48
   ori  $1,$0,0x0009    # $1 = 0x9
   ori  $1,$0,0x000a    # $1 = 0xa
   j 0x80
   ori  $1,$0,0x0006    # $1 = 0xa

   .org 0x60
   ori  $1,$0,0x0007    # $1 = 0x7                
   jr   $2           
   ori  $1,$0,0x0008    # $1 = 0x8
   ori  $1,$0,0x1111
   ori  $1,$0,0x1100

   .org 0x80
   
    
_loop:
   j _loop
   ori  $1,$0,0x0006
