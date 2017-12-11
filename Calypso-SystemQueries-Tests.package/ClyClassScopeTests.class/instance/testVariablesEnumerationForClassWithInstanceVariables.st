tests
testVariablesEnumerationForClassWithInstanceVariables
	scope := ClyClassScope of: ClyClass1FromP1.
	
	scope variablesDo: [ :each | result add: each ].
	
	self assert: (result as: Set) equals: {
		ClyInstanceVariable named: #instanceSideVar2 definedIn: ClyClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 definedIn: ClyClass1FromP1
	} asSet