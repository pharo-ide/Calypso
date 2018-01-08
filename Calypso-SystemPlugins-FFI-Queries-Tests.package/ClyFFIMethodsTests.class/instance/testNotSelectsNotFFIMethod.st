tests
testNotSelectsNotFFIMethod

	self deny: (query selectsMethod: ClyClassWithFFIMethods >> #notFFIMethod)