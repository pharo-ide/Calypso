initialization
setUpModelFromContext
	| selectedGroup |
	super setUpModelFromContext.

	methodClass := context selectedClassSide.
	context isMethodGroupSelected ifFalse: [ ^self].
	selectedGroup := context lastSelectedMethodGroup.
	(selectedGroup isKindOf: ClyExternalPackageMethodGroup) ifTrue: [ 
		^extendingPackage := selectedGroup package].
	(selectedGroup isKindOf: ClyTaggedMethodGroup) ifTrue: [ 
		^methodTags := {selectedGroup tag}]