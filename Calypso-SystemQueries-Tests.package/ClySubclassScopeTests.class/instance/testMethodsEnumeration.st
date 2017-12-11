tests
testMethodsEnumeration
	scope := ClySubclassScope of: ClyClass1FromP1.
	
	scope methodsDo: [ :each | result add: each ].
	
	self assert: (result includesAll: ClyClass1FromP1 subclasses first localMethods).
	self deny: (result includesAll: ClyClass1FromP1 subclasses first classSide localMethods).
	self assert: (result includesAll: ClyClass1FromP1 subclasses second localMethods).
	self deny: (result includesAll: ClyClass1FromP1 subclasses second classSide localMethods).
	self deny: (result includesAll: ClyClass1FromP1 localMethods).
	self deny: (result includesAll: ClyClass1FromP1 classSide localMethods).
	self deny: (result includesAll: ClyClass1FromP1 superclass localMethods).
	self deny: (result includesAll: ClyClass1FromP1 superclass classSide localMethods)