controlling
processClassRemoval: aClassRemoved

	environment systemChanged: (
		ClyOverriddenSuperclassesChanged overridingSubclass: aClassRemoved classAffected)