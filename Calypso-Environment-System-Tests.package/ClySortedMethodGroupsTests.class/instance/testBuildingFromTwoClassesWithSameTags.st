tests
testBuildingFromTwoClassesWithSameTags
	| classes scope |
	classes := {ClySubclassN1OfClass1FromP1. ClyClass1FromP1}.
	scope := environment selectScope: ClyLocalClassScope of: classes.
		
	self retrieveContentFrom: scope.

	self assert: actualObjects first class equals: ClyInheritedMethodGroup.
	self assert: actualObjects first classes equals: classes.
	self assert: actualObjects second class equals: ClyNoTagMethodGroup.
	self assert: actualObjects second classes equals: classes.

	self assert: actualObjects third class equals: ClyTaggedMethodGroup.
	self assert: actualObjects third name equals: 'superclassTag1'.
	self assert: actualObjects third classes asArray equals: {ClyClass1FromP1}.
	
	self assert: actualObjects fourth class equals: ClyTaggedMethodGroup.
	self assert: actualObjects fourth name equals: 'tag1'.
	self assert: actualObjects fourth classes asArray equals: classes.
	
	self assert: actualObjects fifth class equals: ClyTaggedMethodGroup.
	self assert: actualObjects fifth name equals: 'tag2'.
	self assert: actualObjects fifth classes asArray equals: {ClySubclassN1OfClass1FromP1}.