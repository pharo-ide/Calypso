tests
testMethodsEnumerationWhenBasisIsClass
	| expected |
	scope := ClyClassSideScope of: ClyClass1FromP1.
	
	scope methodsDo: [ :each | result add: each selector ].
	
	expected := ClyClass1FromP1 classSide localMethods collect: #selector.
	self assert: result sorted asArray equals: expected sorted asArray