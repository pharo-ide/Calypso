tests
testDetectingDefiningClassFromSubclass

	| varBinding var |
	varBinding := ClyClass2FromP1 classVariableNamed: #ClassVar1.
	
	var := ClyClassVariable on: varBinding visibleFrom: ClySubclassLOfClass2FromP1.
		
	self assert: var definingClass equals: ClyClass2FromP1