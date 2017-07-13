tests
testBuildingClassWhichInlcudesTwoProtocolExtensionsOfSamePackage

	self retrieveSubgroupsFrom: {ClyClass9FromPExtendedByP5 }.

	self assertItems: {ClyClass7WithTag1FromP5 package. 0}