running
setUpEnvironment
	super setUpEnvironment.
	
	environment system: ClySystemEnvironment currentImage.
	plugin := ClyTestedEnvironmentPlugin new.
	plugin environment: environment.