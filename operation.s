.global sum_squares
.global square_root_approx

sum_squares:
	MUL r0, r0, r0
	MUL r1, r1, r1
	ADD r0, r0, r1
	BX LR

square_root_approx:
	MOV r1, r0, LSR #1
	PUSH {r1, LR}
	BL __aeabi_uidiv
	POP {r1, LR}
	ADD r0, r1, r0
	LSR r0, #1
	BX LR
