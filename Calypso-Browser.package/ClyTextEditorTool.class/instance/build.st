building
build	
	self buildTextMorph.
	textModel clearUndoManager.
	self subscribeOnTextChanges.
	
	textMorph 
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self addMorph: textMorph