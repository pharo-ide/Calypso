tests
testMethodsEnumerationWhenInstanceSideMetaLevel
	| subclassMethods |
	scope := ClySubclassScope of: ClyClass1FromP1.
	scope localClassScope: ClyInstanceSideScope.
	
	scope methodsDo: [ :each | result add: each ].
	
	self assert: (result includesAll: ClyClass1FromP1 subclasses first localMethods).
	subclassMethods := ClyClass1FromP1 subclasses
		flatCollect: [ :each | each classSide localMethods ].
	self assert: subclassMethods notEmpty.
	self deny: (result includesAll: subclassMethods)