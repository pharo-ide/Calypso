tests
testDetectingDefiningClassFromSharedPoolUser

	| varBinding var |
	varBinding := ChronologyConstants classVariableNamed: #DayNames.
	
	var := ClyClassVariable on: varBinding visibleFrom: Date.
		
	self assert: var definingClass equals: ChronologyConstants