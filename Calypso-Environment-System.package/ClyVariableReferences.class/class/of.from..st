instance variables
of: variables from: aScope
	^self 
		from: aScope 
		toVariablesFrom: (ClyConstantQuery returning: variables)