running
tearDown
	installedBreakpoints do: [ :each | each remove ].
	installedBreakpoints removeAll.
	
	super tearDown