tests
testNotIncludesMethodWithCritiquesFromDifferentRuleGroup
	| method result |
	group classes: { ClyAnalyzedClassStub classSide }.
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	result := critic analyze: method.
	self waitAnalysisComplete.
	group ruleGroupName: 'Different critiques group'.
	
	self assert: result includesCritiques.
	self deny: (group includesMethod: method)