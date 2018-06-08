execution
executeBy: aClass

	| pragma |
	pragma := implementorMethod pragmaAt: #script:.

	^aClass compiler
		receiver: aClass instanceSide;
		evaluate: pragma arguments first