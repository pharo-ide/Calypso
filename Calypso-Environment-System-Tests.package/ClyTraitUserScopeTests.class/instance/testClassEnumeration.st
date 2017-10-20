tests
testClassEnumeration

	scope := ClyTraitUserScope of: { ClyTraitRoot1 }.

	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {ClyTraitRoot1. 
			ClyTraitChild1. ClyTraitChild2. ClyClassWithTraits. 
			ClyTraitChild2Child. ClyTraitChild3. 
			ClySubclassWithTraitsOfClassWithTraits} asSet