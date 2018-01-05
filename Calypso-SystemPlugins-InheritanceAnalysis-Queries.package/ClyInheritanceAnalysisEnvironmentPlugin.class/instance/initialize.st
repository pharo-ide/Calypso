initialization
initialize
	super initialize.
	
	cacheGuard := Mutex new.
	methodCache := WeakIdentityKeyDictionary new