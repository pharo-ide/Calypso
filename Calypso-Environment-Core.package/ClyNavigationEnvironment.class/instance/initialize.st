initialization
initialize
	super initialize.
	
	accessGuard := Mutex new.
	plugins := OrderedCollection new.
	scopeCache := Dictionary new.
	updateStrategy := ClyInstantEnvironmentUpdateStrategy new