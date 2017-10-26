tests
testVariablesEnumerationForObject

	scope := ClyClassScope of: { Object }.
	
	scope variablesDo: [ :each | result add: each].
	
	self assert: result size equals: 1.
	self 
		assert: result anyOne 
		equals: (ClyClassVariable on: Object classVariables first declaredIn: Object)