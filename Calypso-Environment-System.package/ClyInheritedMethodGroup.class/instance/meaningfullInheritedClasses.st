accessing
meaningfullInheritedClasses

	| ignoreClassRoots sortedClasses |
	ignoreClassRoots := OrderedCollection with: Object with: Object class.
	ignoreClassRoots removeAllFoundIn: classes.
	ignoreClassRoots removeAllFoundIn: (classes collect: #classSide).
	
	sortedClasses := classes asSortedCollection: [ :a :b |
		a allSuperclasses size >= b allSuperclasses size ].

	^sortedClasses flatCollect: [:each | self inheritedClassesOf: each skipping: ignoreClassRoots]