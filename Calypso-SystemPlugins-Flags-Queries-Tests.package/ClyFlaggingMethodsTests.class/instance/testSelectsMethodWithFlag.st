tests
testSelectsMethodWithFlag

	self assert: (query selectsMethod: ClyClassWithFlags >> #methodWithFlag)