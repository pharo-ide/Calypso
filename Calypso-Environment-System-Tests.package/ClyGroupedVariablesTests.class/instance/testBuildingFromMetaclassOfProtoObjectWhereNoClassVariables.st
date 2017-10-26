tests
testBuildingFromMetaclassOfProtoObjectWhereNoClassVariables

	self retrieveGroupsFrom: {ProtoObject class}.
	
	self deny: ((actualObjects collect: #class) includes: ClyClassVariablesMethodGroup)