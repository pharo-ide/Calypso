tests
testNotSelectsMethodWithoutWatchpoint

	self deny: (query selectsMethod: self class >> #methodWithoutWatchpoint)