building
rebuildIfNeeded

	accessGuard critical: [
		self isBuilt ifTrue: [ ^self ].
	 
		items := self defaultItems.
		buildingQuery fetchContent: self from: environmentScope.
		self buildIndexes.
		self metadata reset. 
		environment resolveMetadataOf: self
	]