accessing
findOrCreatePackageMethodGroupFor: aPackage in: existingSubgroups
	
	^existingSubgroups 
		at: aPackage name 
		ifAbsentPut: [ ClyExternalPackageMethodGroup package: aPackage]