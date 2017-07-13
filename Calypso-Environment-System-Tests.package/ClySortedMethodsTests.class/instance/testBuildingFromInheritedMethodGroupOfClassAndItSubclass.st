tests-inherited methods
testBuildingFromInheritedMethodGroupOfClassAndItSubclass
	| group |
	group := ClyInheritedMethodGroup classes: { 
		ClyClassWithTraits. ClySubclassWithTraitsOfClassWithTraits }.
		
	self retrieveFromGroup: group.

 	self assertMethods: #(#extentionMethodFromRoot1Trait #localMethod #methodFromRoot1 
		#methodFromTraitChild1 #methodFromTraitChild2 #methodFromTraitChild3)