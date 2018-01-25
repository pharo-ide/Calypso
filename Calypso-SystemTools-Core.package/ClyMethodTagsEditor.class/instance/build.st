building
build
	self hResizing: #rigid.
	self width: 120.
	textMorph := self theme 
		newTextEntryIn: self 
		for: self 
		get: #printMethodTags 
		set: #setNewMethodTags: 
		class: nil 
		getEnabled: nil 
		help: 'input tags which should be applied to current method'.
	textMorph 
		hResizing: #spaceFill;
		acceptOnFocusChange: false;
		ghostText: 'as yet unclassified'.
	
	self addMorph: textMorph