tests-tagged methods
testBuildingFromSingleTaggedMethodGroup
	| group |
	group := ClyTaggedMethodGroup classes: {ClyClass1FromP1} tag: 'tag1'.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#tag1Method1)