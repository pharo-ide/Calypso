running
singleScopeSample
	| newScope |
	newScope := super singleScopeSample.
	newScope relationScopeClasses: {ClySuperclassScope}.
	^newScope