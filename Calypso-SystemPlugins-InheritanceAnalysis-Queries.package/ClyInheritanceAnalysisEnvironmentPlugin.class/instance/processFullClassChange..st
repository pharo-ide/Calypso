controlling
processFullClassChange: aClassModificationApplied
		
	environment systemChanged: (
		ClyOverriddenSuperclassesChanged overridingSubclass: aClassModificationApplied classAffected).
	environment systemChanged: (
		ClyOverridingSubclassesChanged overriddenSuperclass: aClassModificationApplied classAffected)