tests
testSelectsOverrideMethod

	self assert: (query selectsMethod: ClyClassWhichInheritsAbstractClass>>#overriddenMethod)