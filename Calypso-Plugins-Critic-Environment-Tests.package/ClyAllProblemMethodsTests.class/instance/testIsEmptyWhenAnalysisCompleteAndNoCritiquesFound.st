tests
testIsEmptyWhenAnalysisCompleteAndNoCritiquesFound

	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithoutCritiques.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	
	query scope: (ClyMethodScope of: {method} in: environment).
	
	self assert: analysisResult isComplete.
	self assert: (query isEmptyIn: environment)