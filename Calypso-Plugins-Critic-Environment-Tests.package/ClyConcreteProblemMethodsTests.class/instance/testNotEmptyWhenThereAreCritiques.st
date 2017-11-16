tests
testNotEmptyWhenThereAreCritiques

	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	self assert: analysisResult includesCritiques.
	query critiqueGroupName: analysisResult critiques anyOne rule group.
	
	query scope: (ClyMethodScope of: {method} in: environment).	
	self deny: (query isEmptyIn: environment)
