tests
testMethodsEnumeration

	scope := ClySubclassScope of: { ClyClass1FromP1 }.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 localMethods).
	self assert: (result includesAll: ClyClass1FromP1 classSide localMethods).
	self assert: (result includesAll: ClyClass1FromP1 superclass localMethods).
	self assert: (result includesAll: ClyClass1FromP1 superclass classSide localMethods).
	self assert: (result includesAll: ClyClass1FromP1 subclasses first localMethods).
	self assert: (result includesAll: ClyClass1FromP1 subclasses first classSide localMethods).
	self assert: (result includesAll: ClyClass1FromP1 subclasses second localMethods).
	self assert: (result includesAll: ClyClass1FromP1 subclasses second classSide localMethods).