tests
testRepresentsClassOfScope

	scope := ClyMultipleClassRelationScope of: #() merging: { ClySuperclassScope }.
	self assert: (scope representsScope: ClySuperclassScope).
	self assert: (scope representsScope: ClyMultipleClassRelationScope).
	self assert: (scope representsScope: ClyTypedScope).
	
	self deny: (scope representsScope: ClySubclassScope).
	self deny: (scope representsScope: ClyCompositeScope). 