initialization
initialize
	super initialize.
	accessGuard := Mutex new.
	needsRebuild := true