tests
testComparisonOfTwoGroups
	
	| anotherGroup |
	group classScope: { ClyAnalyzedClassStub }.
	group ruleGroupName: 'Some Critiques Group'.	
	anotherGroup := self createMethodGroup.
	anotherGroup classScope: group classes.
	anotherGroup ruleGroupName: 'Some Critiques Group'.
	
	self assert: group equals: anotherGroup.
	self assert: group hash equals: anotherGroup hash.
	
	anotherGroup classScope: { Object }.
	self deny: group = anotherGroup.
	
	anotherGroup classScope: group classes.
	anotherGroup ruleGroupName: 'another Critiques Group'.
	self deny: group = anotherGroup