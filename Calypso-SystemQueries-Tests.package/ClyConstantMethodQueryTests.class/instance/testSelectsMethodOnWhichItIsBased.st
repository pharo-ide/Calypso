tests
testSelectsMethodOnWhichItIsBased

	self assert: (query selectsMethod: self class >> #method1) 
