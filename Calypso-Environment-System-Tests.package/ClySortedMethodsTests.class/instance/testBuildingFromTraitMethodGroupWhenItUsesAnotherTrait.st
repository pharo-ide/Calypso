tests-superclass methods
testBuildingFromTraitMethodGroupWhenItUsesAnotherTrait
		| group |
	group := ClySuperclassMethodGroup classes: {ClyTraitChild2Child } superclass: ClyTraitChild2.
		
	self retrieveFromGroup: group.

	self assertMethods: #(methodFromTraitChild2)