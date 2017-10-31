browser items
prepareBrowserItem: anItem ofPackage: aPackage

	| workingCopy versionName isModified |

	workingCopy := aPackage mcWorkingCopy.
	workingCopy ifNil: [ ^self ].
	
	versionName := workingCopy versionInfo ifNil: [''].  
	isModified := workingCopy modified.
	
	anItem addProperty: (ClyPackageVersionProperty named: versionName modified: isModified)