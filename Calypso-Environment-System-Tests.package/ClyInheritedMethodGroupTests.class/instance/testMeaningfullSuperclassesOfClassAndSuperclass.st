tests
testMeaningfullSuperclassesOfClassAndSuperclass

	| actual |
	group classScope: { ClySubclassN1OfClass1FromP1. ClyClass1FromP1}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ClyClass1FromP1 }