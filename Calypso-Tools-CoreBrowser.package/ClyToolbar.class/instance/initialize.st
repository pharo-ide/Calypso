initialization
initialize
	super initialize.
	self 
		color: self theme calypsoToolbarColor;
		changeTableLayout;
		height: self defaultHeight;	
		layoutInset: 2@0; 
		listDirection: #leftToRight;
		wrapCentering: #center;
		hResizing: #spaceFill;
		vResizing: #rigid