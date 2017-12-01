running
waitBuildComplete
	[queryResult buildProcess isNil or: [queryResult buildProcess isTerminated]]
		whileFalse: [ 20 milliSeconds wait ]