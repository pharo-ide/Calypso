tests
testInheritedClassesOfClassAndSubclass

	| actual |
	group classScope: { ClyClass1FromP1. ClySubclassN1OfClass1FromP1}.
	
	actual := group inheritedClasses.
	self assert: (actual includes: ClyClass1FromP1)