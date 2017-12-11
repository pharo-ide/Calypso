operations
undo

	super undo.

	self editingState undoManager hasPrevious ifFalse: [ 
		self browserTool changesCancelled]