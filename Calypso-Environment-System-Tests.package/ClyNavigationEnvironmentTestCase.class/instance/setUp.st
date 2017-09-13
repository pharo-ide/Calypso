running
setUp
	super setUp.
	environment := ClyNavigationEnvironment overSystemEnvironment: ClySystemEnvironment currentImage.
	environment detachFromSystem "we dont need any subscribtion in tests"