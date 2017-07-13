accessing
inheritedClassesOf: aClass skipping: ignoreClassRoots
	| result |
	result := IdentitySet new.
	(self shouldIgnore: aClass roots: ignoreClassRoots) ifTrue: [ ^result ].

	aClass traitComposition allTraits do: [:trait | result add: trait ].
	aClass allSuperclasses reverseDo: [:each | 
		(self shouldIgnore: each roots: ignoreClassRoots) ifFalse: [ 
			each traitComposition allTraits do: [:trait | result add: trait ].
			result add: each. ignoreClassRoots add: each]].

	ignoreClassRoots add: aClass.
		
	^result