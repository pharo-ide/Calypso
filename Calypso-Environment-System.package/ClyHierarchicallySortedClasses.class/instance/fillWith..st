building
fillWith: classes
	| item localSubclasses rootClasses uniqueClasses |
	uniqueClasses := classes asIdentitySet.
	rootClasses := self containerForItemsSortedByName.
	localSubclasses := IdentityDictionary new.

	uniqueClasses do: [ :each |			
		item := self 
			buildItemFrom: each withSuperclassesOn: localSubclasses 
			which: [:superclass |	uniqueClasses includes: superclass].		
		
		item isRoot ifTrue: [ rootClasses add: item]].

	rootClasses do: [ :each | 
		items add: each.
		self collectSortedSubclassesFor: each from: localSubclasses]