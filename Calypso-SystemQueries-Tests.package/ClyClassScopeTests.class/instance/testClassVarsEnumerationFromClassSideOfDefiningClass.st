tests
testClassVarsEnumerationFromClassSideOfDefiningClass

	scope := ClyClassScope of: {Object class }.
	
	scope classVariablesDo: [ :each | result add: each].
	
	self assert: result size equals: 1.
	self 
		assert: result anyOne 
		equals: (ClyClassVariable on: Object classVariables first definedIn: Object)