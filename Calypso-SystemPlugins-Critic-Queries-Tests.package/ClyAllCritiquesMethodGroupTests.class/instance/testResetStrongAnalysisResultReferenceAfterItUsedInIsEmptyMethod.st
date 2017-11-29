tests
testResetStrongAnalysisResultReferenceAfterItUsedInIsEmptyMethod

	| analyzedMethods |
	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	analyzedClass foundClassCritiques: #(someCritique).
	analyzedMethods := ClyAnalyzedClassMethods of: analyzedClass.
	self analyzeGroupClasses.
	self assert: (critic requestedCritiques isRegistered: analyzedMethods).
	self assert: group isEmpty.
	Smalltalk garbageCollect.
	self deny: (critic requestedCritiques isRegistered: analyzedMethods).
