tests
testNotEmptyWhenThereIsMethodWithCritique

	analyzedClass analyzedClassSideSelectors: #(#methodWithHalt).
	analyzedClass passQuicklyCritiquesAnalysis.
	self analyzeGroupClasses.
	
	self deny: group isEmpty