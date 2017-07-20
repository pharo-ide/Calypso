model - updating
windowIsClosing

	navigationViews do: [ :each | each windowIsClosing ].
	tabManager windowIsClosing.
	self window 
		removeMorph: self;
		model: nil