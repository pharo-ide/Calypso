tests-untagged methods
testBuildingFromNoTagMethodGroupWhenTraitsSupplySuchMethodsButClassHasNot
	| group |
	group := ClyNoTagMethodGroup classes: {ClyClassWithTraits }.
		
	self retrieveFromGroup: group.

	self assertMethods: #()