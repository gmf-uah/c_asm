@ this ARM assembly file was written by hand
.global sum_squares
.global square_root_approx

sum_squares:
	MUL r0, r0, r0
	MUL r1, r1, r1
	ADD r0, r0, r1
	BX LR

square_root_approx: @ terrible approximation, Newton's method
	MOV r1, r0, LSR #1
	PUSH {r1, LR} @ save the parameter in case div overwrites
	BL __aeabi_uidiv
	@ ready for a mouthful? deep breaths
	@ ARM Embedded Application Binary Interface,
	@ Unsigned Integer Divide
	POP {r1, LR}
	ADD r0, r1, r0
	LSR r0, #1
	BX LR
