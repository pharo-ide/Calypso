tests
testMeaningfullSuperclassesOfClassSideOfDirectObjectSubclass

	| actual |
	group classScope: { ClyClass1FromP1 class}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: #()