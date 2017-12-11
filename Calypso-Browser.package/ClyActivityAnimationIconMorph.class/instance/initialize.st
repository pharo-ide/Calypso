initialization
initialize
	super initialize.
	self 
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		cellInset: 2.
	progress := 1.
	progressIconMorph := self currentIcon asMorph.
	self addMorphBack: progressIconMorph.
	self extent: progressIconMorph extent.