tests
testNotSelectsNotAbstractMethod
	
	self deny: (query selectsMethod: Object >> #printString)