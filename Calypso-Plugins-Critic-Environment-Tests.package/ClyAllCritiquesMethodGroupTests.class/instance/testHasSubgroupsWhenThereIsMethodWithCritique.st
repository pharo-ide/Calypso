tests
testHasSubgroupsWhenThereIsMethodWithCritique

	analyzedClass analyzedClassSideSelectors: #(#methodWithHalt).
	analyzedClass passQuicklyCritiquesAnalysis.
	self analyzeGroupClasses.
	
	self assert: group hasSubgroups