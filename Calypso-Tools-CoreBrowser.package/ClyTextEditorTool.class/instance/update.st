updating
update
	| unacceptedText newText |
	self decorateContainerTab.
	newText := self editingText.
	self pendingText asString = newText ifTrue: [ 
		self applyDecorations.
		^self ].

	self hasUnacceptedEdits ifTrue: [unacceptedText := self pendingText copy].
	textModel setInitialText: newText.
	unacceptedText ifNil: [ ^self textUpdated ].

	self pendingText: unacceptedText.
	textMorph hasEditingConflicts: true.
	textMorph changed