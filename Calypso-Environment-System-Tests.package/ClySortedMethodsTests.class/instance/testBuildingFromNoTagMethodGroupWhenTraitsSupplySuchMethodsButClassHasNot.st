tests-untagged methods
testBuildingFromNoTagMethodGroupWhenTraitsSupplySuchMethodsButClassHasNot
	| group |
	group := ClyNoTagMethodGroup classScope: {ClyClassWithTraits }.
		
	self retrieveFromGroup: group.

	self assertMethods: #()