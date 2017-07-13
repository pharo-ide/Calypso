testing
matches: anEnvironmentItem
	| method |.
	(pattern beginsWith: '[') ifTrue: [ ^self matchesByScript: anEnvironmentItem].
	method := anEnvironmentItem actualObject.
	(self matchesName: method selector) ifTrue: [ ^true ].
	(self matchesName: method origin name) ifTrue: [ ^true ].
	^self matchesName: method package name