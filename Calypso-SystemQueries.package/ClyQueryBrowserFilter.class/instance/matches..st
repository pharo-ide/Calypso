testing
matches: aBrowserItem
	| actualObject |
	actualObject := aBrowserItem class = ClyBrowserItem 
		ifTrue: [ aBrowserItem actualObject] ifFalse: [ aBrowserItem ].
		
	(pattern value beginsWith: '[') ifTrue: [ 
			^self matchesByScript: actualObject].

	^actualObject matchesQueryBrowserFilter: self