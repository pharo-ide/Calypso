tests
testAnalysisShouldKeepRequestedObject
	| class result |
	class := ClyAnalyzedClassStub new.
	class analyzedClassSideSelectors: #(methodWithHalt).
		
	result := critic analyze: class.
	self waitAnalysisComplete.

	self assert: critic analyzedObjects size equals: 3. "class, methodsOfClass and separate methods"
	self assert: critic requestedCritiques size equals: 2. "class, methodsOfClass"
	self assert: (critic requestedCritiques isRegistered: class)