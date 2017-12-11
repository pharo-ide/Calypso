initialization
attachToTextMorph 
	super attachToTextMorph.
	
	wrapModeLabel := StringMorph new.
	wrapModeLabel setBalloonText:
			'Let you decide if the code pane should automaticaly wrap lines if a line reach the end of the line. W: Wrap / NW: Add a scrollbar.'.
	wrapModeLabel on: #mouseDown send: #toggle to: self.
	self updateLabel.
	self addMorph: wrapModeLabel