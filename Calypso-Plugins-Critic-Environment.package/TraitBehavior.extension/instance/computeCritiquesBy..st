*Calypso-Plugins-Critic-Environment
computeCritiquesBy: aSystemCritic
	
	aSystemCritic registerCritiques: self critiques for: self.
	
	aSystemCritic analyze: (ClyAnalyzedClassMethods of: self)