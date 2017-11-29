tests
testSelectsMethodWhichUsesUndeclares
	
	self assert: (query selectsMethod: ClyClassWithUndeclares >> #method1WithUndeclares)