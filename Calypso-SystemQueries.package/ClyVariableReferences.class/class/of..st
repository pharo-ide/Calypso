instance variables
of: variables
	^self new
		variableQuery: (ClyConstantQuery returning: variables)