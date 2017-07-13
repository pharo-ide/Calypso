tests
testUpdatingAllCritiquesShouldCleanRegisteredObjectsWeakGarbage
	| class result |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: (#critique1).
	class analyzedClassSideSelectors: #(methodWithHalt).
	critic analyze: class.
	result := critic analyze: (ClyAnalyzedClassStub class >> #methodWithHalt). "here we strongly keep reference to method analysis result while class result will stay weak and after garbage collection and update message it will be removed".
	self waitAnalysisComplete.	
	self assert: (critic doesObjectHaveCritiques: class).
	
	Smalltalk garbageCollect.
	self assert: (critic requestedCritiques analysisResultFor: class ifAbsent: [ nil ]) isNil. 
	critic updateAllCritiques.
	self waitAnalysisComplete.
	self deny: (critic doesObjectHaveCritiques: class).
	self assert: (critic doesObjectHaveCritiques: ClyAnalyzedClassStub class >> #methodWithHalt).