tests
testHasNoGroupsWhenClassHasCritiquesButNotMethod

	analyzedClass analyzedClassSideSelectors: #().
	analyzedClass passQuicklyCritiquesAnalysis.
	analyzedClass foundClassCritiques: #(someCritique).
	self analyzeGroupClasses.
	
	self deny: group hasSubgroups