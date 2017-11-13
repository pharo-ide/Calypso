tests
testSelectsMethodWithCritiquesFromSameGroup
	| method analysisResult |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	query critiqueGroupName: analysisResult critiques anyOne rule group.
	self executeQuery.
	
	self assert: (query selectsMethod: method)