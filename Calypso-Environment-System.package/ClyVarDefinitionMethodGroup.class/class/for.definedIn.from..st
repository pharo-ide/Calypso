instance creation
for: aVariableClass definedIn: definingClass from: aClassScope

	| variableQuery |
	variableQuery := aVariableClass queryClass 
		from: (aClassScope asScope: ClyClassScope of: {definingClass}).
	^self 
		named: definingClass name 
		on: (ClyVariableReferences from: aClassScope toVariablesFrom: variableQuery)