tests
testCreateNoTagGroupWhenThereAreUntaggedMethods

	| group |
	self buildGroupsFor: ClySubclassN1OfClass1FromP1.
	
	group := builtGroups detect: [:each | each isKindOf: ClyNoTagMethodGroup ].

	self assert: group name equals: ClyNoTagMethodGroup groupName.
	self assert: group methodQuery class equals: ClyUntaggedMethods.
	self assert: group methodQuery scope equals: (ClyClassScope of: {ClySubclassN1OfClass1FromP1}).