*Calypso-SystemPlugins-Reflectivity-Queries
affectsMethod: aMethod

	^link methods anySatisfy: [:each | each compiledMethod == aMethod compiledMethod ]