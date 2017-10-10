testing
matches: anEnvironmentItem
	(pattern value beginsWith: '[') ifTrue: [ 
			^self matchesByScript: anEnvironmentItem].

	^anEnvironmentItem actualObject matchesQueryResultFilter: self