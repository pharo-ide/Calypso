tests
testInheritedTraitsFromObjectWithTraits

	| actual |
	group classes: { ClyClassWithTraits }.
	
	actual := group inheritedTraits asArray.
	
	self assert: (actual includes: ClyTraitChild1). 
	self assert: (actual includes: ClyTraitChild2).
	self assert: (actual includes: ClyTraitRoot1).