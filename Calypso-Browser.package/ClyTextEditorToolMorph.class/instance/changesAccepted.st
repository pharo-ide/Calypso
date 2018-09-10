events handling
changesAccepted

	| applied |
	^self applyChangesBy: [ 
		textMorph hasUnacceptedEdits: true.
		[self changesAreAboutApply.
		applied := self applyChanges] on: Error do: [ :err | 
			textModel text: self editingText. 
			textMorph hasUnacceptedEdits: true.
			err pass].	
		applied 
			ifTrue: [ textMorph hasUnacceptedEdits: false. 
				self textUpdated.
				browser focusActiveTab ]
			ifFalse: [ 
				textModel text: self editingText. 
				textMorph hasUnacceptedEdits: true].
	]