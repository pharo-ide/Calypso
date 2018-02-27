running
tearDown
	installedWatchpoints do: [ :each | each uninstall ].
	installedWatchpoints removeAll.
	
	super tearDown