opening/closing
windowIsClosing

	navigationViews do: [ :each | each windowIsClosing ].
	tabManager windowIsClosing.
	self window ifNotNil: [ :w |
		w
			removeMorph: self;
			updatePanesFromSubmorphs;
			model: nil]