*Calypso-SystemPlugins-Breakpoints-Queries
affectsMethodsDefinedInPackage: aPackage

	^link methods anySatisfy: [ :each | each package == aPackage]