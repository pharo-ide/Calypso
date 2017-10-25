building
fillWith: classes
	| item localSubclasses rootClasses |
	rootClasses := self containerForItemsSortedByName.
	localSubclasses := IdentityDictionary new.

	classes do: [ :each |			
		item := self 
			buildItemFrom: each withSuperclassesOn: localSubclasses 
			which: [:superclass |	classes includes: superclass].		
		
		item isRoot ifTrue: [ rootClasses add: item]].

	rootClasses do: [ :each | 
		items add: each.
		self collectSortedSubclassesFor: each from: localSubclasses]