testing
isCurrentState
	^self isBrowserStillExists and: [ self isCurrentStateOf: browser]