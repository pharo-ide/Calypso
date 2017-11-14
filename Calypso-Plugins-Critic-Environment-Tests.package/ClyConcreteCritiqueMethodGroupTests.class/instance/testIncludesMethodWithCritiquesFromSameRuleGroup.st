tests
testIncludesMethodWithCritiquesFromSameRuleGroup
	| method result |
	group classScope: { ClyAnalyzedClassStub classSide }.
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	result := critic analyze: method.
	self waitAnalysisComplete.
	group ruleGroupName: result critiques anyOne rule group.
	
	self assert: (group includesMethod: method)