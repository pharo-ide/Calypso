tests
testSelectsMethodWithCounter
	self installCounterInto: #methodWithCounter.

	self assert: (query selectsMethod: self class >> #methodWithCounter)