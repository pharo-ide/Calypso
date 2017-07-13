tests-superclass methods
testBuildingFromSuperclassMethodGroupWhenItUsesTrait
		| group |
	group := ClySuperclassMethodGroup 
		classes: {ClySubclassWithTraitsOfClassWithTraits } superclass: ClyClassWithTraits.
		
	self retrieveFromGroup: group.

	self assertMethods: #(localMethod)