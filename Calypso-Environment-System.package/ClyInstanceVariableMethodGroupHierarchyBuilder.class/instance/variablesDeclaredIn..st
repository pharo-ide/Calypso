building
variablesDeclaredIn: aClass
	^aClass slots collect: [:each | ClyInstanceVariable slot: each declaredIn: aClass ]