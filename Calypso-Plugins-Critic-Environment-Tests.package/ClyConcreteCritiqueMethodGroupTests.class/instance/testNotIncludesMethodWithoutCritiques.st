tests
testNotIncludesMethodWithoutCritiques
	| method result |
	group classes: { ClyAnalyzedClassStub classSide }.
	method := ClyAnalyzedClassStub classSide >> #methodWithoutCritiques.
	result := critic analyze: method.
	self waitAnalysisComplete.
	
	self deny: result includesCritiques.
	self deny: (group includesMethod: method)