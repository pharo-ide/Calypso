tests
testRelatedClasses
	
	| actual |
	self buildFromClass: ClyClassWithTraits.
		
	actual := self builtContent environmentScope allClasses asSet.
	self assert: actual equals: { ClyClassWithTraits. 
		ClyTraitChild1. ClyTraitRoot1. ClyTraitRoot2. ClyTraitChild2. ClyTraitChild2Child} asSet