tests
testNotSelectsMethodWithCritiquesFromDifferentGroup
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	self assert: analysisResult includesCritiques.
	
	query critiqueGroupName: 'some unexisted critique group'.
	self executeQuery.
	
	self deny: (query selectsMethod: method)