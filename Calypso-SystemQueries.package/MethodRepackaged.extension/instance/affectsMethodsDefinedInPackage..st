*Calypso-SystemQueries
affectsMethodsDefinedInPackage: aPackage
	^(super affectsMethodsDefinedInPackage: aPackage)
		or: [ oldPackage = aPackage ]