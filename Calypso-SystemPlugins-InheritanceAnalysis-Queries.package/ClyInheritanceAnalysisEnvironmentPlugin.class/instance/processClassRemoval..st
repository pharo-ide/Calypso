controlling
processClassRemoval: aClassRemoved
	self resetCacheOfClass: aClassRemoved classAffected.
	self resetCacheOfClass: aClassRemoved classAffected superclass.
	
	environment systemChanged: (
		ClyOverriddenSuperclassesChanged overridingSubclass: aClassRemoved classAffected)