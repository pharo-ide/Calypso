tests
testMeaningfullSuperclassesOfDirectObjectSubclass

	| actual |
	group classScope: { ClyClass1FromP1 }.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: #()