controlling
extendClassScope: aClassScope
	
	| traitScope |
	traitScope := aClassScope asScope: ClyInheritedTraitScope.
	^aClassScope increasedByClassesFrom: traitScope