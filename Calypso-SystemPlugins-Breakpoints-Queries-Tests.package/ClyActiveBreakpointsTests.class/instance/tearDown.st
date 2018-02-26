running
tearDown
	super tearDown.
	
	installedBreakpoints do: [ :each | each remove ].
	installedBreakpoints removeAll