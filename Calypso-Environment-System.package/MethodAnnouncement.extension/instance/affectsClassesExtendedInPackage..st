*Calypso-Environment-System
affectsClassesExtendedInPackage: aPackage
	^ self isProvidedByExtension and: [ self affectsMethodsDefinedInPackage: aPackage ]