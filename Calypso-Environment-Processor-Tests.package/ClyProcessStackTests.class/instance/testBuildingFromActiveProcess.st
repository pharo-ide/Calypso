tests
testBuildingFromActiveProcess
	
	| processScope |
	processScope := environment selectScope: ClyProcessScope of: { Processor activeProcess}.
	self retrieveContentFrom: processScope.
		
	self assert: actualObjects notEmpty