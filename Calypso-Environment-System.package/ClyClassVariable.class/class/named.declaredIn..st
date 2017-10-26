instance creation
named: aSymbol declaredIn: aClass
	^self 
		on: (aClass classVarNamed: aSymbol)
		declaredIn: aClass