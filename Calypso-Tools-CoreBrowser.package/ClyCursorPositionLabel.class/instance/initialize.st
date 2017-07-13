initialization
initialize
	super initialize.	
	self setBalloonText: 'Current line number/Total line number [Current character number]'.
	labelMorph := '' asStringMorph.
	self addMorph: labelMorph