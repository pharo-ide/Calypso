tests
testDetectingDefiningClassFromClassSide

	| varBinding var |
	varBinding := ClyClass2FromP1 classVariableNamed: #ClassVar1.
	
	var := ClyClassVariable on: varBinding visibleFrom: ClyClass2FromP1 class.
		
	self assert: var definingClass equals: ClyClass2FromP1