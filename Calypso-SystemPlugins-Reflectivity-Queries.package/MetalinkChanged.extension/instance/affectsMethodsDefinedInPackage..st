*Calypso-SystemPlugins-Reflectivity-Queries
affectsMethodsDefinedInPackage: aPackage

	^link methods anySatisfy: [ :each | each package == aPackage]