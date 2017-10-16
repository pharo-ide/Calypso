building
rebuildIfNeeded

	accessGuard critical: [
		self isBuilt ifTrue: [ ^self ].
	 
		items := self defaultItems.
		buildingQuery fetchResultAs: self.
		self buildIndexes.
		self metadata reset. 
		environment resolveMetadataOf: self
	]