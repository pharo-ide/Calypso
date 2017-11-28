tests
testMethodsEnumerationWhenBothMetaLevels

	scope := ClyInheritedTraitScope of: { ClyClassWithTraits } localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyTraitChild1 localMethods).
	self assert: (result includesAll: ClyTraitChild1 classSide localMethods).
	self assert: (result includesAll: ClyTraitRoot1 localMethods).
	self assert: (result includesAll: ClyTraitRoot1 classSide localMethods).
	self deny: (result includesAll: ClyClassWithTraits localMethods).
	self deny: (result includesAll: ClyClassWithTraits classSide localMethods).
