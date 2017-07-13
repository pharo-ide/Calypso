tests-external package methods
testBuildingFromExternalPackageMethodGroup
	| group |
	group := ClyExternalPackageMethodGroup 
			classes: {ClyClass9FromPExtendedByP5} package: ClyClass6UntaggedFromP5 package.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#extentionMethod2FromClass9 #extentionMethodFromClass9)