tests
testInheritedClassesOfClass

	| actual |
	group classes: { ClyClassWithTraits }.

	actual := group inheritedClasses asArray.
	self assert: (actual includes: ClyTraitChild1).
	self assert: (actual includes: Object).