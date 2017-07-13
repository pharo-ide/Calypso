tests
testCheckFullAnalysisComplete
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	critic analyze: class.
	
	self deny: critic isAnalysisComplete.
	self waitAnalysisComplete.	
	self assert: critic isAnalysisComplete