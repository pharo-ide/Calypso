tests-untagged methods
testBuildingFromNoTagMethodGroupWhenTraitsSupplySuchMethods
	| group |
	group := ClyNoTagMethodGroup classScope: {ClySubclassWithTraitsOfClassWithTraits }.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#localMethodFromSubclass)