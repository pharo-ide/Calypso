*Calypso-SystemPlugins-Reflectivity-Queries
affectsMethodsDefinedInClass: aClass

	^link methods anySatisfy: [ :each | each origin == aClass]