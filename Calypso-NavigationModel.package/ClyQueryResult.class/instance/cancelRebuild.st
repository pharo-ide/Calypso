building
cancelRebuild

	items ifNil: [self initializeItems].
	needsRebuild := false