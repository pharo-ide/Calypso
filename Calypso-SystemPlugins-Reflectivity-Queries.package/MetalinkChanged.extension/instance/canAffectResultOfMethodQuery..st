*Calypso-SystemPlugins-Reflectivity-Queries
canAffectResultOfMethodQuery: aMethodQuery

	^link methods anySatisfy: [:each | 
		aMethodQuery isAffectedByChangedMethod: each ]