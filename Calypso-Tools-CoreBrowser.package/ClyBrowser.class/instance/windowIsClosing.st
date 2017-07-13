events handling
windowIsClosing

	navigationViews do: [ :each | each windowIsClosing ].
	tabManager windowIsClosing