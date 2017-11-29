tests
testVariablesEnumerationForTwoClassesWithClassAndInstanceVars

	scope := ClyClassScope of: { Object. ClyClass1FromP1 }.	
	scope variablesDo: [ :each | result add: each].
	
	self 
		assert: (result as: Set)
		equals: {
			ClyClassVariable named: #DependentsFields definedIn: Object.
			ClyInstanceVariable named: #instanceSideVar2 definedIn: ClyClass1FromP1.
			ClyInstanceVariable named: #instanceSideVar1 definedIn: ClyClass1FromP1
		} asSet