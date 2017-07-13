tests
testUpdatingAllCritiquesWhenSomeObjectIsStillAnalyzed
	| class |
	class := ClyAnalyzedClassStub new.
	class delayClassCritiquesAnalysis.
	
	critic analyze: class.
	critic requestedCritiques unregister: class. "we simulate that analyzis was running as side effect. After update it should not be analyzed again"

	critic updateAllCritiques.
	self waitAnalysisComplete