initialization
setUpAvailablePlugins

	ClyEnvironmentPlugin allSubclasses 
		select: [ :each | each isAutoActivated ]
		thenDo: [ :each | self addPlugin: each new ]