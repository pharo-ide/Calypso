tests
testUpdatingAllCritiques
	| class |
	class := ClyAnalyzedClassStub new.
	class foundClassCritiques: (#critique1).
	class analyzedClassSideSelectors: #(methodWithHalt).
	critic analyze: class.
	self waitAnalysisComplete.	
	self assert: (critic doesObjectHaveCritiques: ClyAnalyzedClassStub class >> #methodWithHalt).

	class analyzedClassSideSelectors: #().
	class foundClassCritiques: #(newCritique).	
	critic updateAllCritiques.
	self waitAnalysisComplete.
	self assert: (critic availableCritiquesFor: class) equals: #(newCritique).
	self deny: (critic doesObjectHaveCritiques: ClyAnalyzedClassStub class >> #methodWithHalt).
	