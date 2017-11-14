tests-extended methods
testBuildingFromExtendedMethodGroupWhereTraitAlsoSupplyExtentions
	| group |
	group := ClyExtendedMethodGroup classScope: {ClySubclassWithTraitsOfClassWithTraits}.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#extentionMethodFromClassItself)