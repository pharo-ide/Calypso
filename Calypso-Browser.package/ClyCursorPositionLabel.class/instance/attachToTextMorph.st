controlling
attachToTextMorph
	super attachToTextMorph.
	
	self textArea announcer when: RubSelectionChanged send: #updateContents to: self.
	self updateContents