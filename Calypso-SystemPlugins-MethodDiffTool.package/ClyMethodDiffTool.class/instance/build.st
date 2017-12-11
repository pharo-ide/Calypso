building
build
	diffMorph := DiffMorph from: self leftMethod sourceCode to: self rightMethod sourceCode.
	diffMorph	
		contextClass: self rightMethod sourceCode;
		hResizing:	#spaceFill;
		vResizing: #spaceFill;
		showOptions: false.
	self addMorph: diffMorph fullFrame: LayoutFrame identity