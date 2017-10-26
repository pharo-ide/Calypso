building
variablesDeclaredIn: aClass
	^aClass slots collect: [:each | ClyInstanceVariable on: each declaredIn: aClass ]