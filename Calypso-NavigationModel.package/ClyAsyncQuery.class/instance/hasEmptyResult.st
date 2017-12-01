execution
hasEmptyResult
	| result |
	result := self execute.
	result isReady ifTrue: [ ^result isEmpty ].
	^false "If actual result is still in processing then we can not be sure about empty check"