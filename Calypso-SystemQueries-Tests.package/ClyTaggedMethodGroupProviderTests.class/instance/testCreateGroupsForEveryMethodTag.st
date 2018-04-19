tests
testCreateGroupsForEveryMethodTag
	| groups query |
	
	self buildGroupsFor: ClySubclassN1OfClass1FromP1.
	
	groups := builtGroups select: [ :each | each isKindOf: ClyMethodTagItem ].
	self
		assert: (groups collect: #tag as: Set)
		equals: ClySubclassN1OfClass1FromP1 tagsForMethods asSet.
	query := groups first queryForChildrenNamed: #methods.
	self assert: query class equals: ClyTaggedMethods.
	self assert: query scope equals: (ClyClassScope of: ClySubclassN1OfClass1FromP1)