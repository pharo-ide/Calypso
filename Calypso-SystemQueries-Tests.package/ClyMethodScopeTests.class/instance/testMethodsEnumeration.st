tests
testMethodsEnumeration
	scope := ClyMethodScope ofAll: {self class >> #method1. self class >> #method2}.
		
	scope methodsDo: [ :each | result add: each ].
	
	self assert: result asArray equals: scope basisObjects asArray