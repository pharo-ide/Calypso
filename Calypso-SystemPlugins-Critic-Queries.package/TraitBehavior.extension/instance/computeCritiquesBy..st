*Calypso-SystemPlugins-Critic-Queries
computeCritiquesBy: aSystemCritic
	
	aSystemCritic registerCritiques: self critiques for: self.
	
	aSystemCritic analyze: (ClyAnalyzedClassMethods of: self)