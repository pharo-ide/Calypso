tests
testNotEmptyWhenThereAreCritiques
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	query scope: (ClyMethodScope of: {method} in: environment).
	self assert: analysisResult includesCritiques.
	self deny: query checkEmptyResult