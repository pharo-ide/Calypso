building
fillWith: classes

	| parentClasses rootClasses |
	parentClasses := IdentityDictionary new.

	rootClasses := self buildRootsFrom: classes asIdentitySet withParentsOn: parentClasses.

	rootClasses do: [ :each | 
		items add: each.
		self collectSortedChildrenOf: each depth: 0 from: parentClasses]