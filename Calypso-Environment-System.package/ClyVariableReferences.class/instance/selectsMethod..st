testing
selectsMethod: aMethod
	
	| vars |
	vars := scope environment query: variableQuery.
	
	^self doesMethod: aMethod useAnyOf: vars items