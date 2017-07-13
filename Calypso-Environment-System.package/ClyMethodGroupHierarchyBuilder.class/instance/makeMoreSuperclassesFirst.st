building
makeMoreSuperclassesFirst

	rootClasses := rootClasses asSortedCollection: [ :a :b |
		a allSuperclasses size >= b allSuperclasses size]