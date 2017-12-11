initialization
buildContextBar
	contextBar := Morph new
		setNameTo: 'context bar';
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 4@0;
		color: Color transparent;
		height: 0;
		minHeight: 0.
	self addMorphBack: contextBar