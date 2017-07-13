tests
testRelatedClasses
	
	| actual |
	self buildFromClass: ClyTraitRoot1.
		
	actual := self builtContent environmentScope allClasses asSet.
	self assert: actual equals: { ClyTraitRoot1. 
		ClyTraitChild1. ClyTraitChild2. ClyTraitChild3.
		ClyTraitChild2Child. ClyClassWithTraits. 
		ClySubclassWithTraitsOfClassWithTraits } asSet