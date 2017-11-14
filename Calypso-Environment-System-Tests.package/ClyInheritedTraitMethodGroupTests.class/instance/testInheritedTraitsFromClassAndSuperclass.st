tests
testInheritedTraitsFromClassAndSuperclass

	| actual |
	group classScope: { ClySubclassWithTraitsOfClassWithTraits. ClyClassWithTraits}.
	actual := group inheritedTraits asSet.
	
	self assert: actual equals: { ClyTraitChild3. ClyTraitChild1. ClyTraitChild2. ClyTraitChild2Child. 
		ClyTraitRoot1. ClyTraitRoot2.  } asSet