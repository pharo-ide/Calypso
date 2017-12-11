opening/closing
open
	| window |
	
	self ensureInitialState.
	window := self openInWindow.
	window model: self.		
	self updateWindowTitle