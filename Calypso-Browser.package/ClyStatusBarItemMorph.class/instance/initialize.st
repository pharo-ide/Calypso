initialization
initialize
	super initialize.	
	self 
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		extent: 0@0