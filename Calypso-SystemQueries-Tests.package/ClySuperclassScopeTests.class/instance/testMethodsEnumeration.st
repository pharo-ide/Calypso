tests
testMethodsEnumeration

	| expected |
	scope := ClySuperclassScope of: { ClyClass1FromP1 }.
	
	scope methodsDo: [ :each | result add: each].
	
	expected := { Object. ProtoObject } flatCollect: #localMethods as: IdentitySet..
	self assert: result asIdentitySet equals: expected