tests
testClassEnumeration
	| expected |
	scope := ClyInheritedTraitScope of: ClyClassWithTraits.
	
	scope classesDo: [ :each | result add: each ].
	
	expected := ClyClassWithTraits traitComposition allTraits.
	self assert: result asSet equals: expected asSet