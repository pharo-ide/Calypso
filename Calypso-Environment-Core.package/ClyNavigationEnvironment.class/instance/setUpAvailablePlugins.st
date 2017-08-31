initialization
setUpAvailablePlugins

	ClySystemEnvironmentPlugin allSubclasses 
		select: [ :each | each isAutoActivated ]
		thenDo: [ :each | self addPlugin: each new ]