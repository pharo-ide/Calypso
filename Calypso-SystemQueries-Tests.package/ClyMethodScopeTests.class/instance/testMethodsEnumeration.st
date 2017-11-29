tests
testMethodsEnumeration

	scope := ClyMethodScope of: { self class >> #method1. self class >> #method2 }.
	
	scope methodsDo: [ :each | result add: each].
	
	self assert: result asArray equals: scope basisObjects asArray