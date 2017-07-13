tests-extended methods
testBuildingFromExtendedMethodGroup
	| group |
	group := ClyExtendedMethodGroup classes: {
		ClySubclassLOfClass0FromPExtendedByP1. ClyClass9FromPExtendedByP5}.
		
	self retrieveFromGroup: group.

	self assertMethods: #(extentionMethod2FromClass9 #extentionMethodFromClass9 #extentionMethodFromSubclassL)