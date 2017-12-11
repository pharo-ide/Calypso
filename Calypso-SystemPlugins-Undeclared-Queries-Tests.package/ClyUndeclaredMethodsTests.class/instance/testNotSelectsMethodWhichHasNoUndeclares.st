tests
testNotSelectsMethodWhichHasNoUndeclares
	
	self deny: (query selectsMethod: Object >> #printString)