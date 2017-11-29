tests
testUpdateCritiquesForObject
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	critic analyze: class.
	self waitAnalysisComplete.	
	self assert: (critic isAnalysisCompleteFor: class).

	critic updateCritiquesFor: class.
	self deny: (critic isAnalysisCompleteFor: class).
	self deny: (critic doesObjectHaveCritiques: class).
	self waitAnalysisComplete.
	self assert: (critic isAnalysisCompleteFor: class).
	self assert: (critic doesObjectHaveCritiques: class)