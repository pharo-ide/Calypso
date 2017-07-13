*Calypso-Environment-System
affectsMethodsDefinedInPackage: aPackage

	^(super affectsMethodsDefinedInPackage: aPackage) or: [ 
		oldMethod package == aPackage ]