running
multipleScopeSample
	| newScope |
	newScope := super multipleScopeSample.
	newScope relationScopeClasses: {ClySuperclassScope}.
	^newScope