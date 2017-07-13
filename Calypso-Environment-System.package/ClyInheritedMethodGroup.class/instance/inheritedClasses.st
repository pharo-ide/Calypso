accessing
inheritedClasses

	| emptyList sortedClasses |
	emptyList := OrderedCollection new.
	sortedClasses := classes asSortedCollection: [ :a :b |
		a allSuperclasses size >= b allSuperclasses size ].
	
	^sortedClasses flatCollect: [:each | self inheritedClassesOf: each skipping: emptyList]