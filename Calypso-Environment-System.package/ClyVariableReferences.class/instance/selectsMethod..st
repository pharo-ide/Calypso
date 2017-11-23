testing
selectsMethod: aMethod
	
	| vars |
	vars := variableQuery execute.
	
	^self doesMethod: aMethod useAnyOf: vars items