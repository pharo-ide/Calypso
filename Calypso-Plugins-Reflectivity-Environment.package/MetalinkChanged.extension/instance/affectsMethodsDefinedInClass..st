*Calypso-Plugins-Reflectivity-Environment
affectsMethodsDefinedInClass: aClass

	^link methods anySatisfy: [ :each | each origin == aClass]