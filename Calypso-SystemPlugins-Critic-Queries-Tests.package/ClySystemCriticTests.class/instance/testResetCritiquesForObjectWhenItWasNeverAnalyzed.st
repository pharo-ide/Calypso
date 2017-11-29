tests
testResetCritiquesForObjectWhenItWasNeverAnalyzed

	critic resetCritiquesFor: Object.
	
	self deny: (critic doesObjectHaveCritiques: Object)