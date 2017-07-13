tests
testCheckAnalysisCompleteForObject
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	critic analyze: class.
	
	self deny: (critic isAnalysisCompleteFor: class).
	self waitAnalysisComplete.	
	self assert: (critic isAnalysisCompleteFor: class)