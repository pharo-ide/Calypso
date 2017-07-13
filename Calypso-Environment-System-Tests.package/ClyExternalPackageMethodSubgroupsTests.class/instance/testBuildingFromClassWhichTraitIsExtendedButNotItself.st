tests
testBuildingFromClassWhichTraitIsExtendedButNotItself

	self retrieveSubgroupsFrom: { ClyClassWithTraits }.

	self assertItems: #()