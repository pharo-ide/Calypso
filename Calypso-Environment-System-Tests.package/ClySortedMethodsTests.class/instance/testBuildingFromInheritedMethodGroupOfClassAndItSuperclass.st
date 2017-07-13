tests-inherited methods
testBuildingFromInheritedMethodGroupOfClassAndItSuperclass
	| group |
	group := ClyInheritedMethodGroup classes: {
		ClySubclassWithTraitsOfClassWithTraits. ClyClassWithTraits }.
		
	self retrieveFromGroup: group.

 	self assertMethods: #(#extentionMethodFromRoot1Trait #localMethod #methodFromRoot1 
		#methodFromTraitChild1 #methodFromTraitChild2 #methodFromTraitChild3)