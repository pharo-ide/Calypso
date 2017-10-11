initialization
setUpContextParameters
	super setUpContextParameters.

	context isPackageSelected ifFalse: [ ^self ].
	
	classGroup := context lastSelectedClassGroup