tests-extended methods
testBuildingFromExtendedMethodGroupWhereOnlyTraitSupplyExtentions
	| group |
	group := ClyExtendedMethodGroup classScope: {ClyClassWithTraits}.
		
	self retrieveFromGroup: group.

	self assertMethods: #()