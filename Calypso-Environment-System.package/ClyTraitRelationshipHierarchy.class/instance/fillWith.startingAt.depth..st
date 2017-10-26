building
fillWith: filteredChildren startingAt: rootClass depth: rootDepth

	| item sortedChildren currentDepth |
	currentDepth := rootDepth.
	(filteredChildren includes: rootClass) ifTrue: [  
		item := rootClass formatForSystemQuery.
		item depth: currentDepth.
		items add: item.
		currentDepth := currentDepth + 1].
	
	sortedChildren := self containerForItemsSortedByName.
	environmentScope childrenOf: rootClass do: [:each | sortedChildren add: each].
	sortedChildren do: [ :each | 
		self fillWith: filteredChildren startingAt: each depth: currentDepth ]