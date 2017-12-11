*Calypso-SystemQueries
affectsClassesExtendedInPackage: aPackage
	^ self isProvidedByExtension and: [ self affectsMethodsDefinedInPackage: aPackage ]