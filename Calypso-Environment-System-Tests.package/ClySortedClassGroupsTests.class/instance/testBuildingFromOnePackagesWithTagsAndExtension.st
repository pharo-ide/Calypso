tests
testBuildingFromOnePackagesWithTagsAndExtension
	| packages |
	packages := environment selectScope: ClyPackageScope of: { ClyClass7WithTag1FromP5 package}.
	
	self retrieveContentFrom: packages.
	
	self 
		assertItems: { ClyNoTagClassGroup. 0. ClyTaggedClassGroup. 0. ClyTaggedClassGroup. 0. 
						ClyExtendedClassGroup. 0 } 
		withValue: [:item | item actualObject class].
	self assert: actualObjects second name equals: 'Tag1'.
	self assert: actualObjects third name equals: 'Tag2'.