tests
testNotSelectsMethodWithoutFlag

	self deny: (query selectsMethod: ClyClassWithFlags >> #methodWithoutFlag)