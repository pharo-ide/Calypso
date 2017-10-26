tests
testInstVarsEnumeration

	scope := ClyClassScope of: { ClyClass1FromP1 }.
	
	scope instanceVariablesDo: [ :each | result add: each].
	
	self 
		assert: (result as: Set)
		equals: {
			ClyInstanceVariable named: #instanceSideVar2 declaredIn: ClyClass1FromP1. 
			ClyInstanceVariable named: #instanceSideVar1 declaredIn: ClyClass1FromP1.
		} asSet