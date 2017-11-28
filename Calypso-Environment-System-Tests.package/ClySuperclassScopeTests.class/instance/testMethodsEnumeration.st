tests
testMethodsEnumeration

	scope := ClySuperclassScope of: { ClyClass1FromP1 }.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 superclass localMethods).
	self deny: (result includesAll: ClyClass1FromP1 superclass classSide localMethods).
	self deny: (result includesAll: ClyClass1FromP1 localMethods).
	self deny: (result includesAll: ClyClass1FromP1 classSide localMethods)