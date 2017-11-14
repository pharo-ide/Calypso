tests-inherited methods
testBuildingFromInheritedMethodGroupOfSuperclassOfClassWithTraits
	| group |
	group := ClyInheritedMethodGroup classScope: {ClySubclassWithTraitsOfClassWithTraits }.
		
	self retrieveFromGroup: group.

 	self assertMethods: #(#extentionMethodFromRoot1Trait #localMethod #methodFromRoot1 
		#methodFromTraitChild1 #methodFromTraitChild2 #methodFromTraitChild3)