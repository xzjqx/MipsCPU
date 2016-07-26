   .org 0x0
   .set noat
   .set noreorder
   .set nomacro
   .global _start
_start:
	ori $3, $0, 0x0
	ori $4, $0, 0x10

_loop1:
	addiu $3,$3,0x1
	lui $1,0xbfd0
	ori $1,$1,0x03f8
	sb $3,0x0($1)
	bne $3, $4, _loop1
	nop

_loop:
	j _loop
	nop
