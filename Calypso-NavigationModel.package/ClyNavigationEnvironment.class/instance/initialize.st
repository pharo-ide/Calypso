initialization
initialize
	super initialize.
	
	accessGuard := Mutex new.
	updateGuard := Mutex new.
	plugins := OrderedCollection new.
	queryCache := WeakValueDictionary new.
	updateStrategy := ClyInstantEnvironmentUpdateStrategy new