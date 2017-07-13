items resolving
resolvePropertiesOfPackage: anItem

	| workingCopy versionName isModified |

	workingCopy := anItem actualObject mcWorkingCopy.
	workingCopy ifNil: [ ^self ].
	
	versionName := workingCopy versionInfo ifNil: [''].  
	isModified := workingCopy modified.
	
	anItem addProperty: (ClyPackageVersionProperty named: versionName modified: isModified)