execution
checkEmptyResult
	| result |
	result := self execute.
	result isBuilt ifTrue: [ ^result isEmpty ].
	^false "If actual result is still in processing then we can not be sure about empty check"