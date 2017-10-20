tests
testMethodsEnumeration

	scope := ClyInheritedTraitScope of: { ClyClassWithTraits }.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClassWithTraits localMethods).
	self assert: (result includesAll: ClyClassWithTraits classSide localMethods).
	self assert: (result includesAll: ClyTraitChild1 localMethods).
	self assert: (result includesAll: ClyTraitChild1 classSide localMethods).
	self assert: (result includesAll: ClyTraitRoot1 localMethods).
	self assert: (result includesAll: ClyTraitRoot1 classSide localMethods)