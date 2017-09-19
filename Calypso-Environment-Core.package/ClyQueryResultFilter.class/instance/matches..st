testing
matches: anEnvironmentItem
	(pattern beginsWith: '[') ifTrue: [ 
			^self matchesByScript: anEnvironmentItem].

	^anEnvironmentItem actualObject matchesQueryResultFilter: self
	