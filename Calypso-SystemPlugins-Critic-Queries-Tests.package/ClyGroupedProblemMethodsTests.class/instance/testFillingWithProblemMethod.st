tests
testFillingWithProblemMethod
	| method analysisResult group critique |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	self waitAnalysisComplete.
	self assert: analysisResult includesCritiques.
	critique := analysisResult critiques anyOne.
	
	queryResult fillWith: { method }.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first actualObject.
	self assert: group class equals: ClyConcreteCritiqueMethodGroup.
	self assert: group ruleGroupName equals: critique rule group.
	self assert: group ruleSeverity name equals: critique rule severity