initialization
initialize
	super initialize.
	
	analyzedClassSideSelectors := #().
	foundClassCritiques := #().
	classCritiquesDelayed := false.
	classCritiquesFailed := false