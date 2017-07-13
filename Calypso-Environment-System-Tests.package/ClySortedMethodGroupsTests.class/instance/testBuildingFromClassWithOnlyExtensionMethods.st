tests
testBuildingFromClassWithOnlyExtensionMethods
	| classes |
	classes := environment selectScope: ClyLocalClassScope of: { ClySubclassLOfClass0FromPExtendedByP1}.
		
	self retrieveContentFrom: classes.

	self assert: actualObjects first class equals: ClyInheritedMethodGroup.
	self assert: actualObjects second class equals: ClyExtendedMethodGroup