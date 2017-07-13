tests
testComparisonOfTwoGroups
	
	| anotherGroup |
	group classes: { ClyAnalyzedClassStub }.
	group ruleGroupName: 'Some Critiques Group'.	
	anotherGroup := self createMethodGroup.
	anotherGroup classes: group classes.
	anotherGroup ruleGroupName: 'Some Critiques Group'.
	
	self assert: group equals: anotherGroup.
	self assert: group hash equals: anotherGroup hash.
	
	anotherGroup classes: { Object }.
	self deny: group = anotherGroup.
	
	anotherGroup classes: group classes.
	anotherGroup ruleGroupName: 'another Critiques Group'.
	self deny: group = anotherGroup