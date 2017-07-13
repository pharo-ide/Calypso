tests
testAccessingAvailableCritiquesForObjectWhichWasNeverAnalyzed
		
	| actual |
	actual := critic availableCritiquesFor: Object.

	self assert: actual isEmpty