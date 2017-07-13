tests
testCheckThatObjectHasCritiques
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: #(critique1 critique2).
	critic analyze: class.
	
	self deny: (critic doesObjectHaveCritiques: class).
	self waitAnalysisComplete.
	self assert: (critic doesObjectHaveCritiques: class)