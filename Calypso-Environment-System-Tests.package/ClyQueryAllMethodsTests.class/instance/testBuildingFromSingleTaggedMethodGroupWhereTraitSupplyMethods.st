tests-tagged methods
testBuildingFromSingleTaggedMethodGroupWhereTraitSupplyMethods
	| group |
	group := ClyTaggedMethodGroup classes: {ClyClassWithTraits} tag: 'tag'.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#localMethod)