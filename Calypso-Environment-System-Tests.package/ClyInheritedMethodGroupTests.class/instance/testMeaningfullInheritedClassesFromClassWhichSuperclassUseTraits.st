tests
testMeaningfullInheritedClassesFromClassWhichSuperclassUseTraits

	| actual |
	group classes: { ClySubclassWithTraitsOfClassWithTraits }.

	actual := group meaningfullInheritedClasses asSet.
	self assert: actual equals: { ClyTraitChild3. ClyTraitChild1. ClyTraitChild2. ClyTraitChild2Child. 
		ClyTraitRoot1. ClyTraitRoot2. ClyClassWithTraits } asSet