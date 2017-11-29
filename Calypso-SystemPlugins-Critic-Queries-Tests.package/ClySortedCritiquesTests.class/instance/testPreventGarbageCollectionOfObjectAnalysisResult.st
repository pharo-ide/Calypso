tests
testPreventGarbageCollectionOfObjectAnalysisResult
	| method scope |
	method := ClyAnalyzedClassStub class >> #methodWithHalt.
	scope := environment selectScope: ClyMethodScope of: { method }.
		
	self retrieveContentFrom: scope.
	self assert: (environment systemCritic requestedCritiques isRegistered: method).
	
	Smalltalk garbageCollect.	
	self assert: (environment systemCritic requestedCritiques isRegistered: method)