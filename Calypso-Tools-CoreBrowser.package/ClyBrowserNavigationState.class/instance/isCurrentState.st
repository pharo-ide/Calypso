testing
isCurrentState
	^self isBrowserStillExists and: [ self isCurrentStateOf: self browser]