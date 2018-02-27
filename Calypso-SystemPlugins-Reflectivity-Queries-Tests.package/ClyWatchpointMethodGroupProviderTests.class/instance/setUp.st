running
setUp
	super setUp.
	
	installedWatchpoint := ClyMethodWatchpointsTests new setUp; installWatchpointInto: #methodWithWatchpoint 