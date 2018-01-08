initialization
initialize
	super initialize.
	
	cacheGuard := Mutex new.
	methodCache := IdentityDictionary new