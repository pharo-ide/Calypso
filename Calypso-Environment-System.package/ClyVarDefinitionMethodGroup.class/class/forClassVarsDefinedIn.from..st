instance creation
forClassVarsDefinedIn: definingClass from: aClassScope

	| variableQuery |
	variableQuery := ClyAllClassVariables 
		from: (aClassScope asScope: ClyClassScope of: {definingClass}).
	^self 
		named: definingClass name 
		on: (ClyVariableReferences from: aClassScope toVariablesFrom: variableQuery)