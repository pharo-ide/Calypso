tests
testBuildingFromSingleClass
	| classes |
	classes := environment selectScope: ClyLocalClassScope of: { ClySubclassN1OfClass1FromP1 }.
		
	self retrieveContentFrom: classes.
	self 
		assertItems: { ClyInheritedMethodGroup. 0. ClyNoTagMethodGroup. 0. ClyTaggedMethodGroup. 0. ClyTaggedMethodGroup. 0 }
		withValue: [ :item | item actualObject class ].
	self assert: actualObjects third name equals: 'tag1'.
	self assert: actualObjects fourth name equals: 'tag2'.