initialization
initialize
	super initialize.
	decorators := OrderedCollection new.
	isManagedByUser := false.
	self
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill
	