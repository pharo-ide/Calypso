tests
testInheritedClassesOfClassAndSuperclass

	| actual |
	group classScope: { ClySubclassN1OfClass1FromP1. ClyClass1FromP1}.
	
	actual := group inheritedClasses.
	self assert: (actual includes: ClyClass1FromP1)