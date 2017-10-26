tests
testClassVarsEnumerationWhenTheyNotExist

	scope := ClyClassScope of: { ClyClass1FromP1 }.
	
	scope classVariablesDo: [ :each | result add: each].
	
	self assert: result isEmpty