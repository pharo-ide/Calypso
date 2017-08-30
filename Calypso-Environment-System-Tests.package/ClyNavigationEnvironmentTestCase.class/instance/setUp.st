running
setUp
	super setUp.
	environment := ClyNavigationEnvironment over: ClySystemEnvironment currentImage.
	environment detachFromSystem "we dont need any subscribtion in tests"