accessing
enableMethodGroup
	providesMethodGroupByDefault := true.
	(ClyNavigationEnvironment currentImage getPlugin: self ifAbsent: [^self])
		providesMethodGroup: true