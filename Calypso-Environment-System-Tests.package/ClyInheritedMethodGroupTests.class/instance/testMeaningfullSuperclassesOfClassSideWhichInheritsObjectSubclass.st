tests
testMeaningfullSuperclassesOfClassSideWhichInheritsObjectSubclass

	| actual |
	group classScope: { ClySubclassN1OfClass1FromP1 class}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ClyClass1FromP1 class}