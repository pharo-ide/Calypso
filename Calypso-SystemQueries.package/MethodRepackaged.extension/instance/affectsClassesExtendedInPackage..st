*Calypso-SystemQueries
affectsClassesExtendedInPackage: aPackage
	^(super affectsClassesExtendedInPackage: aPackage)
		or: [ oldPackage = aPackage ]