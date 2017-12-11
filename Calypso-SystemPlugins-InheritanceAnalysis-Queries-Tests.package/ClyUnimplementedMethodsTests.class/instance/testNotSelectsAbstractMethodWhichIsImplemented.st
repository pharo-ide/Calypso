tests
testNotSelectsAbstractMethodWhichIsImplemented
	
	self deny: (query selectsMethod: ClyAbstractClassExample >> #abstractMethod1)