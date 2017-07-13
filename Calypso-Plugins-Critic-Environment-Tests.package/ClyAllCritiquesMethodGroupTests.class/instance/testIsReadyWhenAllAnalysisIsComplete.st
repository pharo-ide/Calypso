tests
testIsReadyWhenAllAnalysisIsComplete

	analyzedClass passQuicklyCritiquesAnalysis.
	self analyzeGroupClasses.
	
	self assert: group isReady