tests
testFromTwoMethods
	self installWatchpointInto: #methodWithWatchpoint.
	self queryFromScope: ClyMethodScope ofAll: {
		self class >> #methodWithWatchpoint. 
		self class >> #methodWithoutWatchpoint}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithWatchpoint) 