*Calypso-Plugins-Reflectivity-Environment
affectsMethodGroup: aMethodGroup

	^link methods anySatisfy: [:each | 
		aMethodGroup canIncludeMethod: each ]