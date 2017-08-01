accessing
enableMethodGroup
	providesMethodGroupByDefault := true.
	(ClySystemNavigationEnvironment currentImage getPlugin: self ifAbsent: [^self])
		providesMethodGroup: true