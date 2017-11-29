tests
testEmptyWhenAllAnalysisIsCompleteAndNoMethodCritiquesFound

	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	self analyzeGroupClasses.
	
	self assert: group isEmpty 