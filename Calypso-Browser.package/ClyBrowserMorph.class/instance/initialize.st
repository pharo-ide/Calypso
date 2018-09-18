initialization
initialize
	super initialize.
	navigationStarted := false.
	navigationHistory := ClyNavigationHistory new.
	plugins := SortedCollection sortBlock: [ :a :b | a priority <= b priority ].
	self extent: self initialExtent.
	self changeProportionalLayout.
	self initializeToolsPanel.
	self initializeNavigationPanel.
	self addPaneSplitters