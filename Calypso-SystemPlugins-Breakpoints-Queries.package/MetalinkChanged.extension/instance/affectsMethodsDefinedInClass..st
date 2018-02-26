*Calypso-SystemPlugins-Breakpoints-Queries
affectsMethodsDefinedInClass: aClass

	^link methods anySatisfy: [ :each | each origin == aClass]