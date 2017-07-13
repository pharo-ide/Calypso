tests-external package methods
testBuildingFromExternalPackageMethodGroupWhenTraitIsAlsoExtendedThere
	| group |
	group := ClyExternalPackageMethodGroup 
			classes: {ClySubclassWithTraitsOfClassWithTraits} 
			package: ClyClass10FromPExtendingTrait package.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#extentionMethodFromClassItself)