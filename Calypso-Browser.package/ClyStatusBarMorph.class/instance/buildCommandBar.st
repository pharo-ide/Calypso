initialization
buildCommandBar
	commandBar := Morph new
		setNameTo: 'command bar';
		changeTableLayout;
		listDirection: #rightToLeft;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 4@0;
		color: Color transparent;
		height: 0;
		minHeight: 0.
	self addMorphBack: commandBar