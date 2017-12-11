tests
testFromTwoSamePackages

	self buildGroupsForAll: {ClyClass7WithTag1FromP5 package. ClyClass7WithTag1FromP5 package}.
	
	self assert: builtGroups size equals: 2.
	self assert: (builtGroups collect: #tag) sorted asArray equals: #(Tag1 Tag2)