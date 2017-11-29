tests
testIsEmptyWhenThereAreCritiquesButFromDifferentGroup
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	self assert: analysisResult includesCritiques.
	query critiqueGroupName: 'some another critique group'.
	
	query scope: (ClyMethodScope of: {method} in: environment).
	self assert: query checkEmptyResult