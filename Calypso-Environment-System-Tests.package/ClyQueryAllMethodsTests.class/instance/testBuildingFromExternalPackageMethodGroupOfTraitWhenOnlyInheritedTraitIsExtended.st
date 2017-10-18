tests-external package methods
testBuildingFromExternalPackageMethodGroupOfTraitWhenOnlyInheritedTraitIsExtended
	| group |
	group := ClyExternalPackageMethodGroup 
			classes: {ClyTraitChild1} 
			package: ClyClass10FromPExtendingTrait package.
		
	self retrieveFromGroup: group.

	self assertMethods: #()