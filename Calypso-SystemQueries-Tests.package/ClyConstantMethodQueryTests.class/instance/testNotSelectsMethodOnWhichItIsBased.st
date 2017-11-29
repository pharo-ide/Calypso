tests
testNotSelectsMethodOnWhichItIsBased

	self deny: (query selectsMethod: Point >> #x) 
