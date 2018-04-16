tests
testDetectingDefiningClassFromSharedPoolUserClassSide

	| varBinding var |
	varBinding := ChronologyConstants classVariableNamed: #DayNames.
	
	var := ClyClassVariable on: varBinding visibleFrom: Date class.
		
	self assert: var definingClass equals: ChronologyConstants