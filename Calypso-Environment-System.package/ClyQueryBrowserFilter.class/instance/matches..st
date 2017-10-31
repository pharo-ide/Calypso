testing
matches: aBrowserItem
	(pattern value beginsWith: '[') ifTrue: [ 
			^self matchesByScript: aBrowserItem].

	^aBrowserItem actualObject matchesQueryBrowserFilter: self