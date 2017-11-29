testing
shouldIgnore: aClass roots: ignoreClassRoots

	^ignoreClassRoots anySatisfy: [:each | 
		each == aClass or: [ each inheritsFrom: aClass ] ]