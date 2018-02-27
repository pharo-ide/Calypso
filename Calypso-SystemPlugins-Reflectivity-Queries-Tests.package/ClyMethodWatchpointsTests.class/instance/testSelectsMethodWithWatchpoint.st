tests
testSelectsMethodWithWatchpoint
	self installWatchpointInto: #methodWithWatchpoint.

	self assert: (query selectsMethod: self class >> #methodWithWatchpoint)