accessing
disableMethodGroup
	providesMethodGroupByDefault := false.
	(ClySystemNavigationEnvironment currentImage getPlugin: self ifAbsent: [^self])
		providesMethodGroup: false