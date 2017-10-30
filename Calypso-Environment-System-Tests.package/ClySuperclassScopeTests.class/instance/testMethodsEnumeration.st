tests
testMethodsEnumeration

	scope := ClySuperclassScope of: { ClyClass1FromP1 }.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: (result includesAll: ClyClass1FromP1 localMethods).
	self assert: (result includesAll: ClyClass1FromP1 classSide localMethods).
	self assert: (result includesAll: ClyClass1FromP1 superclass localMethods).
	self assert: (result includesAll: ClyClass1FromP1 superclass classSide localMethods)