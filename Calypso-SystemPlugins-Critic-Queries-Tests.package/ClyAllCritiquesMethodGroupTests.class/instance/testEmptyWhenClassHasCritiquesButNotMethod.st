tests
testEmptyWhenClassHasCritiquesButNotMethod

	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	analyzedClass foundClassCritiques: #(someCritique).
	self analyzeGroupClasses.
	
	self assert: group isEmpty 