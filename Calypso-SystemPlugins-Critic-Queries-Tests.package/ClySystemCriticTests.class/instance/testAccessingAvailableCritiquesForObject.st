tests
testAccessingAvailableCritiquesForObject
	| class actual |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	critic analyze: class.
	self waitAnalysisComplete.
	
	actual := critic availableCritiquesFor: class.
	self assert: actual asArray equals: #(critique1 critique2)