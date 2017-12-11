initialization
attachToTextMorph 
	super attachToTextMorph.
	
	label := StringMorph new.
	label setBalloonText:
			'Let you decide if the code pane should show the line numbers at the left of the code pane or not. +L: Click to add the lines number/L: Click to hide them.'.
	label on: #mouseDown send: #toggle to: self.
	self updateLabel.
	self addMorph: label