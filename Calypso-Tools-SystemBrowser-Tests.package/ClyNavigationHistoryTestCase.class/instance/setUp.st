running
setUp
	super setUp.
	
	environment := ClySystemNavigationEnvironment over: ClySystemEnvironment currentImage.
	environment detachFromSystem "to ensure no subscriptions".
	
	browser := self createBrowser.
	browser plugins removeAll.