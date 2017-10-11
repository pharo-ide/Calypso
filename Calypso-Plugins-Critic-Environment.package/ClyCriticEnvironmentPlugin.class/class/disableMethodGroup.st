accessing
disableMethodGroup
	providesMethodGroupByDefault := false.
	(ClyNavigationEnvironment currentImage getPlugin: self ifAbsent: [^self])
		providesMethodGroup: false