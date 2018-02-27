tests
testNotSelectsMethodWithoutCounter

	self deny: (query selectsMethod: self class >> #methodWithoutCounter)