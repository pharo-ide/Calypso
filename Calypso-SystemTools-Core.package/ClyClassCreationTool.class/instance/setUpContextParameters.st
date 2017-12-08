initialization
setUpContextParameters
	super setUpContextParameters.

	context isPackageSelected ifTrue: [ package := context lastSelectedPackage ].
	context isClassTagSelected ifTrue: [ classTag := context lastSelectedClassTag]