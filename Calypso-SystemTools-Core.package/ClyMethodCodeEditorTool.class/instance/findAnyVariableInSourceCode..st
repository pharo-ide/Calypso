selecting text
findAnyVariableInSourceCode: varNames
	| foundNode |
	
	foundNode := editingMethod variableNodes 
		detect: [ :each | varNames includes: each name ] ifNone: [ ^0 to: -1 ].
		
	^foundNode start to: foundNode stop