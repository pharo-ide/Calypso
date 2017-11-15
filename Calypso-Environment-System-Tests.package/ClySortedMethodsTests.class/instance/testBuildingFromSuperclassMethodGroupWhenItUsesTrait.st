tests-superclass methods
testBuildingFromSuperclassMethodGroupWhenItUsesTrait
		| group |
	group := ClyVisibilityMethodGroup 
		forScope: {ClySubclassWithTraitsOfClassWithTraits } toShow: ClyClassWithTraits.
		
	self retrieveFromGroup: group.

	self assertMethods: #(localMethod)