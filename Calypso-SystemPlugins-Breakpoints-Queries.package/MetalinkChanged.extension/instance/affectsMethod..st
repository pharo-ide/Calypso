*Calypso-SystemPlugins-Breakpoints-Queries
affectsMethod: aMethod

	^link methods anySatisfy: [:each | each compiledMethod == aMethod compiledMethod ]