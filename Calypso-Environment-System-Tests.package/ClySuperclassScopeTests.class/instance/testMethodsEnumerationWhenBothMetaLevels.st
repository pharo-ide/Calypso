tests
testMethodsEnumerationWhenBothMetaLevels

	scope := ClySuperclassScope of: { ClyClass1FromP1 } localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 superclass localMethods).
	self assert: (result includesAll: ClyClass1FromP1 superclass classSide localMethods).
	self deny: (result includesAll: ClyClass1FromP1 localMethods).
	self deny: (result includesAll: ClyClass1FromP1 classSide localMethods)