controlling
processFullClassChange: aClassModificationApplied
	
	self resetCacheOfClass: aClassModificationApplied classAffected.
	environment systemChanged: (
		ClyOverriddenSuperclassesChanged overridingSubclass: aClassModificationApplied classAffected).
	environment systemChanged: (
		ClyOverridingSubclassesChanged overriddenSuperclass: aClassModificationApplied classAffected)