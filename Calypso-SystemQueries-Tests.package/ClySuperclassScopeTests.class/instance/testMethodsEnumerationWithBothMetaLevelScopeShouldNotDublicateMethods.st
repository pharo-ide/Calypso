tests
testMethodsEnumerationWithBothMetaLevelScopeShouldNotDublicateMethods
	| expected |
	scope := ClySuperclassScope of: ClySubclassN1OfClass1FromP1 localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | 
		each methodClass instanceSide = ClyClass1FromP1 ifTrue: [result add: each] ].
	
	expected := (ClyClass1FromP1 localMethods , ClyClass1FromP1 class localMethods) asIdentitySet.
	self assert: result asIdentitySet equals: expected