tests
testIsEmptyWhenThereAreNoCritiques
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithoutCritiques.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	query scope: (ClyMethodScope of: {method} in: environment).
	self deny: analysisResult includesCritiques.
	self assert: query checkEmptyResult