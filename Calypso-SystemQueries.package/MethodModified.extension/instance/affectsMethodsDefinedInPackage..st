*Calypso-SystemQueries
affectsMethodsDefinedInPackage: aPackage

	^(super affectsMethodsDefinedInPackage: aPackage) or: [ 
		oldMethod package == aPackage ]