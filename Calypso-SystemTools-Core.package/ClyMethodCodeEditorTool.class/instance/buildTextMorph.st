building
buildTextMorph
	super buildTextMorph.
	
	(textMorph rulerNamed: #textSegmentIcons)
		 on: #click send: #leftSideBarClicked: to: self;
		 on: #mouseUp send: #leftSideBarClickedMouseUp: to: self.
	