building
rebuildIfNeeded
	accessGuard critical: [
		self isBuilt ifTrue: [ ^self ].
	 
		items := self defaultItems.
		buildingQuery fetchResultAs: self inScope: environmentScope.
		self buildIndexes.
		self metadata reset. 
		environment resolveMetadataOf: self
	]