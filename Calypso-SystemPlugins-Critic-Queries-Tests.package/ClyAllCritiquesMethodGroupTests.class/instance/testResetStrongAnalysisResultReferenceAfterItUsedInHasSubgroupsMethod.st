tests
testResetStrongAnalysisResultReferenceAfterItUsedInHasSubgroupsMethod

	| analyzedMethods |
	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	analyzedClass foundClassCritiques: #(someCritique).
	analyzedMethods := ClyAnalyzedClassMethods of: analyzedClass.
	self analyzeGroupClasses.
	self assert: (critic requestedCritiques isRegistered: analyzedMethods).
	self deny: group hasSubgroups.
	Smalltalk garbageCollect.
	self deny: (critic requestedCritiques isRegistered: analyzedMethods)