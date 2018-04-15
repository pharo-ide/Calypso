initialization
setUpModelFromContext
	| selectedGroup |
	super setUpModelFromContext.

	methodClass := context selectedClassSide.
	context isMethodGroupSelected ifFalse: [ ^self].
	selectedGroup := context lastSelectedMethodGroup.
	(selectedGroup isKindOf: ClyExtendingPackageItem) ifTrue: [ 
		^extendingPackage := selectedGroup package].
	(selectedGroup isKindOf: ClyMethodTagItem) ifTrue: [ 
		^methodTags := {selectedGroup tag}]