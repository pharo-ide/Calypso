initialization
initialize
	| separator |
	super initialize.
	self 
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 4@0.
	separator := self theme newLabelIn: self label: '|'.
		
	self addMorph: separator