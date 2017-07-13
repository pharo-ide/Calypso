*Calypso-Plugins-Reflectivity-Environment
affectsMethodsDefinedInPackage: aPackage

	^link methods anySatisfy: [ :each | each package == aPackage]