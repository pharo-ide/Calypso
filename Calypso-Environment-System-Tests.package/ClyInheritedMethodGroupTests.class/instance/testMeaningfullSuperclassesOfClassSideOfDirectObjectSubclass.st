tests
testMeaningfullSuperclassesOfClassSideOfDirectObjectSubclass

	| actual |
	group classes: { ClyClass1FromP1 class}.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: #()