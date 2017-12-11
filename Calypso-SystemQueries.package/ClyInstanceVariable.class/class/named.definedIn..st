instance creation
named: aSymbol definedIn: aClass
	^self 
		on: (aClass slotNamed: aSymbol)
		definedIn: aClass