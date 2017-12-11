*Calypso-SystemPlugins-Reflectivity-Queries
affectsMethodGroup: aMethodGroup

	^link methods anySatisfy: [:each | 
		aMethodGroup canIncludeMethod: each ]