		.data
x_m:		.word		0
j_m:		.word		2
i_m:		.word		4

		.text

fmt:		.string		"Sum is: %d\n" 			//string literal

		.balign		4
		.global		main
main:		stp		x29, x30, [sp, -16]!
		mov		x29, sp

		adrp		x19, j_m
		add		x19, x19, :lo12:j_m
		ldr		w20, [x19]			// w20 = j

		adrp		x19, i_m
		add		x19, x19, :lo12:i_m
		ldr		w21, [x19]			// w21 = i

		add		w22, w20, w21

		adrp		x19, x_m
		add		x19, x19, :lo12:x_m
		str		w22, [x19]			// w22 = k

		adrp		x0, fmt
		add		x0, x0, :lo12:fmt 		//address of "S"
		ldr		x1, [x19]			// now in x0
		bl 		printf

		mov		w0, 0

		ldp		x29, x30, [sp], 16
		ret

