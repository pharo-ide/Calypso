tests-inherited methods
testBuildingFromInheritedMethodGroupOfSuperclassOfClassWithTraits
	| group |
	group := ClyInheritedMethodGroup classes: {ClySubclassWithTraitsOfClassWithTraits }.
		
	self retrieveFromGroup: group.

 	self assertMethods: #(#extentionMethodFromRoot1Trait #localMethod #methodFromRoot1 
		#methodFromTraitChild1 #methodFromTraitChild2 #methodFromTraitChild3)