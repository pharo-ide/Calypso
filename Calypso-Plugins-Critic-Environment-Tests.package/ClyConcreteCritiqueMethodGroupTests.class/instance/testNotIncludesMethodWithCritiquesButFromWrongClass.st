tests
testNotIncludesMethodWithCritiquesButFromWrongClass
	| method result |
	group classes: { ClyAnalyzedClassStub new }. "it will be not actual method origin class"
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	result := critic analyze: method.
	self waitAnalysisComplete.
	group ruleGroupName: result critiques anyOne rule group.
	
	self deny: (group includesMethod: method)