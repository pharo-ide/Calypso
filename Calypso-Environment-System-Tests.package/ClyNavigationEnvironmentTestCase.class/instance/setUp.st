running
setUp
	super setUp.
	environment := ClySystemNavigationEnvironment over: ClySystemEnvironment currentImage.
	environment detachFromSystem "we dont need any subscribtion in tests"