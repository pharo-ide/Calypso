running
tearDown
	installedCounters do: [ :each | each uninstall ].
	installedCounters removeAll.
	
	super tearDown