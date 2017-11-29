instance creation
named: aSymbol definedIn: aClass
	^self 
		on: (aClass classVariableNamed: aSymbol)
		definedIn: aClass