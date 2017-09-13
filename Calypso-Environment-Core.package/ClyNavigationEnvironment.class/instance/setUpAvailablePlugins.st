initialization
setUpAvailablePlugins

	ClyEnvironmentPlugin allSubclasses 
		select: [ :each | each isAutoActivatedOn: self ]
		thenDo: [ :each | self addPlugin: each new ]