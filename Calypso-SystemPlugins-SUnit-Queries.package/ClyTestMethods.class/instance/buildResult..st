execution
buildResult: aQueryResult
	
	| methods tests |
	methods := self actualQuery execute.
	
	tests := methods items select: [ :each | self selectsMethod: each ].
	
	aQueryResult fillWith: tests