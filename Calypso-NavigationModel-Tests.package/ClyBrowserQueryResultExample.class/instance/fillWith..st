building
fillWith: objects
	items := objects collect: [ :each | ClyBrowserItem named: each printString with: each ]