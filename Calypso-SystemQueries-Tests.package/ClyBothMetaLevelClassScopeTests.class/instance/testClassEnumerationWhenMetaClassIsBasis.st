tests
testClassEnumerationWhenMetaClassIsBasis
	scope := ClyBothMetaLevelClassScope of: ClyClass1FromP1 class.
	
	scope classesDo: [ :each | result add: each ].
	
	self assert: result asArray equals: {ClyClass1FromP1}