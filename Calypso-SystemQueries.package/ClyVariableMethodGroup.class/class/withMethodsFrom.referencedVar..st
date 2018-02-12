instance creation
withMethodsFrom: aClassScope referencedVar: aVariable
	^self 
		named: aVariable name 
		on: (ClyVariableReferences of: aVariable from: aClassScope)