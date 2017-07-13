tests-extended methods
testBuildingFromExtendedMethodGroupWhereTraitAlsoSupplyExtentions
	| group |
	group := ClyExtendedMethodGroup classes: {ClySubclassWithTraitsOfClassWithTraits}.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#extentionMethodFromClassItself)