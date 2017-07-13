tests
testMeaningfullSuperclassesOfClassSideWhichInheritsObjectSubclass

	| actual |
	group classes: { ClySubclassN1OfClass1FromP1 class}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ClyClass1FromP1 class}