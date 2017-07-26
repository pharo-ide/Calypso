running
setUp
	super setUp.
	
	environment := ClySystemNavigationEnvironment over: ClySystemEnvironment currentImage.
	environment detachFromSystem "to ensure no subscriptions".
	
	browser := self createBrowser.
	browser navigationEnvironment: environment.
	browser plugins removeAll.