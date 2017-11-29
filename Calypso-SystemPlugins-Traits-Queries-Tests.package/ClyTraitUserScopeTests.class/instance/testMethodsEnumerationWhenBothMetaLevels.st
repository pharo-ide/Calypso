tests
testMethodsEnumerationWhenBothMetaLevels

	scope := ClyTraitUserScope of: { ClyTraitRoot1 } localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyTraitChild1 localMethods).
	self assert: (result includesAll: ClyTraitChild1 classSide localMethods).
	self assert: (result includesAll: ClyClassWithTraits localMethods).
	self assert: (result includesAll: ClyClassWithTraits classSide localMethods).
	self deny: (result includesAll: ClyTraitRoot1 localMethods).
	self deny: (result includesAll: ClyTraitRoot1 classSide localMethods).
