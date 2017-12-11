events handling
changesAccepted

	| applied |
	applyingChanges := true.
	textMorph hasUnacceptedEdits: true.
	[applied := self applyChanges] on: Error do: [ :err | 
			textModel text: self editingText. 
			textMorph hasUnacceptedEdits: true.
			applyingChanges := false.
			err pass].	
	applied 
		ifTrue: [ textMorph hasUnacceptedEdits: false. 
			self textUpdated.
			browser focusActiveTab ]
		ifFalse: [ 
			textModel text: self editingText. 
			textMorph hasUnacceptedEdits: true].
	applyingChanges := false