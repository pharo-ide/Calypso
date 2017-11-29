tests
testUpdateCritiquesForObjectShouldNotRecreateExistingResultInstance
	| class result newResult |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	result := critic analyze: class.
	self waitAnalysisComplete.	
	self assert: (critic isAnalysisCompleteFor: class).
	
	critic updateCritiquesFor: class.
	self waitAnalysisComplete.	
	self assert: (critic isAnalysisCompleteFor: class).
	newResult := critic analyze: class. "it returns existing instance".
	self assert: newResult == result