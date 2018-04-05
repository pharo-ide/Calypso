testing
matches: aBrowserItem
	| actualObject |
	actualObject := (aBrowserItem isKindOf: ClyBrowserItem) 
		ifTrue: [ aBrowserItem actualObject] ifFalse: [ aBrowserItem ].
		
	(pattern value beginsWith: '[') ifTrue: [ 
			^self matchesByScript: actualObject].

	^actualObject matchesQueryBrowserFilter: self