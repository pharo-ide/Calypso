initialization
setUpModelFromContext
	super setUpModelFromContext.

	context isPackageSelected ifTrue: [ package := context lastSelectedPackage ].
	context isClassTagSelected ifTrue: [ classTag := context lastSelectedClassTag]