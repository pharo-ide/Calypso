tests
testMethodsEnumerationWhenBothMetaLevels

	scope := ClyInheritedTraitScope of: ClyClassWithTraits localScope: ClyBothMetaLevelClassScope.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitChild1)).
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitChild1 classSide)).
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitRoot1)).
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitRoot1 classSide)).
	self deny: (result includesAll: ClyClassWithTraits localMethods).
	self deny: (result includesAll: ClyClassWithTraits classSide localMethods).
