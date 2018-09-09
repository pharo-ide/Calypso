initialization
setUpAvailablePlugins

	ClyBrowserPlugin allSubclasses 
		select: [ :each | each isAutoActivated ]
		thenDo: [ :each | self addPlugin: each new ]