printing
printVariables

	^variableQuery scope == scope 
		ifTrue: [variableQuery description]
		ifFalse: [ variableQuery fullDescription ]