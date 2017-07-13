*Calypso-Environment-System
affectsMethodsDefinedInPackage: aPackage

	^methodPackage == aPackage or: [ self methodAffected package == aPackage ]