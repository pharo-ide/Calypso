tests
testNotEmptyWhenAnalysisIsNotComplete
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithoutCritiques.
	analysisResult := critic analyze: method.
	query scope: (ClyMethodScope of: {method} in: environment).
	self deny: analysisResult isComplete.
	self deny: query checkEmptyResult