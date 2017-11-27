converting
asInheritedScope
	| metaLevelScope |
	basisObjects ifEmpty: [ ^self asScope: ClySuperclassScope ].
	
	metaLevelScope := (basisObjects anySatisfy: [ :each | each metaLevelScope = ClyInstanceSideScope ])
		ifTrue: [ ClyInstanceSideScope ] ifFalse: [ ClyClassSideScope ].
		
	^(self asScope: ClySuperclassScope)
		metaLevelScope: metaLevelScope 