tests
testUpdateCritiquesForObjectWhichWasNeverAnalyzed
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	
	critic updateCritiquesFor: class.
	
	self waitAnalysisComplete.	
	self assert: (critic isAnalysisCompleteFor: class).
	self assert: (critic doesObjectHaveCritiques: class)