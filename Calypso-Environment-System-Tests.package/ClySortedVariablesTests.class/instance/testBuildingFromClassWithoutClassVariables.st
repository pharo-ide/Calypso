tests
testBuildingFromClassWithoutClassVariables

	self retrieveGroupsFrom: {ProtoObject}.

	self assertItems: { ClyInheritedMethodGroup. 0}