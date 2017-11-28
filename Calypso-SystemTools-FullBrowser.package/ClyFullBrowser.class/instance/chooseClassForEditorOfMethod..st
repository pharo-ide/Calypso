accessing
chooseClassForEditorOfMethod: aMethod

	| selectedClass |
	self classSelection isSingleSelected ifTrue: [ 
		selectedClass := self classSelection lastSelectedItem actualObject.
		^self currentMetaLevelOf: selectedClass ].
	
	^aMethod origin