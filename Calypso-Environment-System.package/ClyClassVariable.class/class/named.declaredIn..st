instance creation
named: aSymbol declaredIn: aClass
	^self 
		on: (aClass classVariableNamed: aSymbol)
		declaredIn: aClass