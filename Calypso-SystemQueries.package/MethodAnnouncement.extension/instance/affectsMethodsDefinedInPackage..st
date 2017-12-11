*Calypso-SystemQueries
affectsMethodsDefinedInPackage: aPackage

	^methodPackage == aPackage or: [ self methodAffected package == aPackage ]