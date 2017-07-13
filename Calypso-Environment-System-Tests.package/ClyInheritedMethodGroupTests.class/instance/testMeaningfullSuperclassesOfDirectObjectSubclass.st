tests
testMeaningfullSuperclassesOfDirectObjectSubclass

	| actual |
	group classes: { ClyClass1FromP1 }.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: #()