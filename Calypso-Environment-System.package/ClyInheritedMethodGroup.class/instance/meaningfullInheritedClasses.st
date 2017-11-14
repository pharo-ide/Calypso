accessing
meaningfullInheritedClasses

	| ignoreClassRoots sortedClasses |
	ignoreClassRoots := OrderedCollection with: Object with: Object class.
	ignoreClassRoots removeAllFoundIn: classScope.
	ignoreClassRoots removeAllFoundIn: (classScope collect: #classSide).
	
	sortedClasses := classScope asSortedCollection: [ :a :b |
		a allSuperclasses size >= b allSuperclasses size ].

	^sortedClasses flatCollect: [:each | self inheritedClassesOf: each skipping: ignoreClassRoots]