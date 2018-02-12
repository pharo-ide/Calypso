instance variables
ofAny: variables from: aScope
	^aScope adoptQuery: (self toVariablesFrom: (ClyConstantQuery returning: variables))