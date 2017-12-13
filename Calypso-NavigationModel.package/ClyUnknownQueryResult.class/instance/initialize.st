initialization
initialize
	super initialize.
	needsRebuild := false.
	self initializeItems.
	self collectMetadata