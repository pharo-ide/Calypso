initialization
initialize
	super initialize.
	color := Color transparent.
	self changeTableLayout.
	self vResizing: #shrinkWrap.
	self hResizing: #shrinkWrap.
	self minWidth: 0.
	self minHeight: 0.
