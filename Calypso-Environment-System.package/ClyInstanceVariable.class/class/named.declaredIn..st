instance creation
named: aSymbol declaredIn: aClass
	^self 
		slot: (aClass slotNamed: aSymbol)
		declaredIn: aClass