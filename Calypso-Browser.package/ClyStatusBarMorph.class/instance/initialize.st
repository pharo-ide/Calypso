initialization
initialize
	super initialize.	
	self 
		color: self theme windowColor;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		height: 0;
		minHeight: 0;
		layoutInset: 10@2.
	self buildContextBar.
	self buildCommandBar