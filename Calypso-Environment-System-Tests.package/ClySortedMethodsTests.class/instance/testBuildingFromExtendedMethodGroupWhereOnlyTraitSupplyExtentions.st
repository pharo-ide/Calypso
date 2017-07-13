tests-extended methods
testBuildingFromExtendedMethodGroupWhereOnlyTraitSupplyExtentions
	| group |
	group := ClyExtendedMethodGroup classes: {ClyClassWithTraits}.
		
	self retrieveFromGroup: group.

	self assertMethods: #()