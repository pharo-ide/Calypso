instance creation
withMethodsFrom: aClassScope referencedAny: aVariableClass definedIn: definingClass

	| variableQuery |
	variableQuery := aVariableClass queryClass 
		from: (aClassScope asScope: ClyClassScope of: {definingClass}).
	^self 
		named: definingClass name 
		on: (ClyVariableReferences from: aClassScope toVariablesFrom: variableQuery)