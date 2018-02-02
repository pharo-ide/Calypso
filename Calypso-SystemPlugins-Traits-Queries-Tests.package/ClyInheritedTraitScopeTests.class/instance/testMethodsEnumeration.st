tests
testMethodsEnumeration
	scope := ClyInheritedTraitScope of: ClyClassWithTraits.
	
	scope methodsDo: [ :each | result add: each ].
	
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitChild1)).
	self assert: (result includesAll: (self methodsInstalledFrom: ClyTraitRoot1)).
	self deny: (result includesAll: (self methodsInstalledFrom: ClyTraitRoot1 classSide)).
	self deny: (result includesAll: ClyClassWithTraits localMethods).
	self deny: (result includesAll: ClyClassWithTraits classSide localMethods)