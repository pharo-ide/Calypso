building
buildFromClass: aClass depth: currentDepth

	| item sortedChildren |
	item := ClyEnvironmentItem named: aClass name with: aClass.
	item depth: currentDepth.
	items add: item.
	
	sortedChildren := self containerForItemsSortedByName.
	environmentScope childrenOf: aClass do: [:each | sortedChildren add: each].
	sortedChildren do: [ :each | self buildFromClass: each depth: currentDepth + 1 ]