instance variables
ofAny: variables
	^self new
		variableQuery: (ClyConstantQuery returning: variables)