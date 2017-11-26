instance creation
forInstVarsDefinedIn: definingClass from: aClassScope

	| variableQuery |
	variableQuery := ClyAllInstanceVariables 
		from: (aClassScope asScope: ClyClassScope of: {definingClass}).
	^self 
		named: definingClass name 
		on: (ClyVariableReferences from: aClassScope toVariablesFrom: variableQuery)