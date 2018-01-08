tests
testSelectsFFIMethod

	self assert: (query selectsMethod: ClyClassWithFFIMethods >> #ffiMethod)