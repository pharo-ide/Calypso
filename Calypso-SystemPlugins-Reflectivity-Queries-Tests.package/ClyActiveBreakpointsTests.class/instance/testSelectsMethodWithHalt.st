tests
testSelectsMethodWithHalt
	
	self assert: (query selectsMethod: ClyClassWithHaltMethods>>#haltMethod1)