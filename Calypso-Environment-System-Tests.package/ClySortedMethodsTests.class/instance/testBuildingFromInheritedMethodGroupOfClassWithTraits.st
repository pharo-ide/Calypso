tests-inherited methods
testBuildingFromInheritedMethodGroupOfClassWithTraits
	| group |
	group := ClyInheritedMethodGroup classScope: {ClyClassWithTraits }.
		
	self retrieveFromGroup: group.

	self assertMethods: #(extentionMethodFromRoot1Trait methodFromRoot1
		methodFromTraitChild1 methodFromTraitChild2)