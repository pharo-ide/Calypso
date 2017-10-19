tests
testMethodsEnumeration

	| expected |
	scope := ClyMethodGroupScope of: { ClyTaggedMethodGroup classes: {ClyClass1FromP1} tag: #tag1}.
	
	scope methodsDo: [ :each | result add: each].
	
	expected := ClyClass1FromP1 methodsTaggedWith: #tag1.
	self assert: result sorted asArray equals: expected sorted asArray