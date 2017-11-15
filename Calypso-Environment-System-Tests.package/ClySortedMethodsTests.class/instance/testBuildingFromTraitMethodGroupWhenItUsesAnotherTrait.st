tests-superclass methods
testBuildingFromTraitMethodGroupWhenItUsesAnotherTrait
		| group |
	group := ClyVisibilityMethodGroup forScope: {ClyTraitChild2Child } toShow: ClyTraitChild2.
		
	self retrieveFromGroup: group.

	self assertMethods: #(methodFromTraitChild2)