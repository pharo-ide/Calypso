*Calypso-SystemPlugins-Breakpoints-Queries
canAffectResultOfMethodQuery: aMethodQuery

	^link methods anySatisfy: [:each | 
		aMethodQuery isAffectedByChangedMethod: each ]