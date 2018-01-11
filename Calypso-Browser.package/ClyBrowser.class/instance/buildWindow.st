opening/closing
buildWindow	
	| window |
	window := (SystemWindow labelled: self newWindowTitle) model: self.
	window 
		addMorph: self frame: (0@0 extent: 1@1);
		updatePaneColors.
	^window