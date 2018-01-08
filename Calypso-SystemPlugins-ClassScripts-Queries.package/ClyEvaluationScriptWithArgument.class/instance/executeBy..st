execution
executeBy: aClass

	| pragma |
	pragma := implementorMethod pragmaAt: #script:.
	
	^aClass compiler
			evaluate: pragma arguments first
			for: aClass instanceSide
			logged: false