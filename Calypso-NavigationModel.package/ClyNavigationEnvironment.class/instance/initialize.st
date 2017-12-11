initialization
initialize
	super initialize.
	
	accessGuard := Mutex new.
	plugins := OrderedCollection new.
	queryCache := WeakValueDictionary new.
	updateStrategy := ClyInstantEnvironmentUpdateStrategy new