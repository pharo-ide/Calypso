tests
testHoldAnalysisResultStronglyToPreventCollectingThemAsGarbage

	| analyzedMethods |
	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	analyzedClass foundClassCritiques: #(someCritique).
	analyzedMethods := ClyAnalyzedClassMethods of: analyzedClass.
	self analyzeGroupClasses.
	self assert: (critic requestedCritiques isRegistered: analyzedMethods).
	Smalltalk garbageCollect.
	self assert: (critic requestedCritiques isRegistered: analyzedMethods).
