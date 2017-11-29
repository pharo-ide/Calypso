tests
testClassVarsEnumeration

	scope := ClyClassScope of: { Object. ClyClass1FromP1 }. "last one has no class vars"
	
	scope classVariablesDo: [ :each | result add: each].
	
	self assert: result size equals: 1.
	self 
		assert: result anyOne 
		equals: (ClyClassVariable on: Object classVariables first definedIn: Object)