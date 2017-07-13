operations
recordAcrossWindowNavigationFrom: aBrowser byUndo: isUndoOperation

	| returnState |
	returnState := aBrowser snapshotNavigationState.
	isUndoOperation 
		ifTrue: [ self executeUndoBy: [ self recordState: returnState ] ]
		ifFalse: [ self executeRedoBy: [ self recordState: returnState ] ]