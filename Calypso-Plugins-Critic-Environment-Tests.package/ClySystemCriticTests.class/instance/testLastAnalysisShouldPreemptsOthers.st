tests
testLastAnalysisShouldPreemptsOthers

	| class1 class2 result1 result2 |
	class1 := ClyAnalyzedClassStub new.
	class1 delayClassCritiquesAnalysis.
	class2 := ClyAnalyzedClassStub new.
	class2 passQuicklyCritiquesAnalysis.
	
	result1 := critic analyze: class1.
	30 milliSeconds wait.
	self deny: result1 isComplete.
	result2 := critic analyze: class2.
	[50 milliSeconds wait. critic isAnalysisCompleteFor: class2] whileFalse.
	self deny: result1 isComplete.
	self assert: result2 isComplete