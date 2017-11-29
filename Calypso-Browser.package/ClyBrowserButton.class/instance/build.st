initialization
build
	| label |
	label := self theme newLabelIn: self label: self title.
	label on: #click send: #executeCommand to: self.
	label emphasis: TextEmphasis underlined emphasisCode.
	
	self addMorph: label