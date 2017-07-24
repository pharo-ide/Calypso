operations
recordAcrossWindowNavigationFrom: aBrowser byUndo: isUndoOperation

	| returnState |
	returnState := ClyAccrossWindowNavigationState from: aBrowser.
	isUndoOperation 
		ifTrue: [ self executeUndoBy: [ self recordState: returnState ] ]
		ifFalse: [ self executeRedoBy: [ self recordState: returnState ] ]