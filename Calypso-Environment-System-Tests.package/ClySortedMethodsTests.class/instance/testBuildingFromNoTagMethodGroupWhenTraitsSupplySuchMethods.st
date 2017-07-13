tests-untagged methods
testBuildingFromNoTagMethodGroupWhenTraitsSupplySuchMethods
	| group |
	group := ClyNoTagMethodGroup classes: {ClySubclassWithTraitsOfClassWithTraits }.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#localMethodFromSubclass)