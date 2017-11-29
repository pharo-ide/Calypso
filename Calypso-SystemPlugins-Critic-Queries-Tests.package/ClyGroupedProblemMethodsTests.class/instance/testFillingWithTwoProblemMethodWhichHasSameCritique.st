tests
testFillingWithTwoProblemMethodWhichHasSameCritique
	| method analysisResult group critique method2 analysisResult2 |
	method := ClyAnalyzedClassStub classSide >> #methodWithHalt.
	analysisResult := critic analyze: method.
	method2 := ClyAnalyzedClassStub classSide >> #methodWithHalt2.
	analysisResult2 := critic analyze: method2.
	self waitAnalysisComplete.
	self assert: analysisResult includesCritiques.
	critique := analysisResult critiques anyOne.
	
	queryResult fillWith: { method. method2 }.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first actualObject.
	self assert: group class equals: ClyConcreteCritiqueMethodGroup.
	self assert: group ruleGroupName equals: critique rule group.
	self assert: group ruleSeverity name equals: critique rule severity