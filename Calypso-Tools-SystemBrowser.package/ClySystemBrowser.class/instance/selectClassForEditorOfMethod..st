accessing
selectClassForEditorOfMethod: aMethod

	| selectedClass |
	self selectedClasses isSingleSelected ifTrue: [ 
		selectedClass := self selectedClasses lastSelectedItem actualObject.
		^self resolveCurrentClassSideOf: selectedClass ].
	
	^aMethod origin