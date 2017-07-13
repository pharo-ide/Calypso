opening/closing
open
	| window |
	
	window := self openInWindow.
	window model: self.
	self updateWindowTitle 