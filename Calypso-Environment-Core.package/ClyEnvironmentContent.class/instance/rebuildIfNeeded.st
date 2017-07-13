building
rebuildIfNeeded

	accessGuard critical: [
		items ifNotNil: [ ^self ].
	 
		items := self defaultItems.
		buildingQuery fetchContent: self from: environmentScope.
		self buildIndexes.
		self metadata reset. 
		environment resolveMetadataOf: self
	]