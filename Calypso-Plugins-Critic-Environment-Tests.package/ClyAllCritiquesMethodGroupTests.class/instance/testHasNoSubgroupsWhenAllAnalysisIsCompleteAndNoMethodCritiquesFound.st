tests
testHasNoSubgroupsWhenAllAnalysisIsCompleteAndNoMethodCritiquesFound

	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	self analyzeGroupClasses.
	
	self deny: group hasSubgroups 