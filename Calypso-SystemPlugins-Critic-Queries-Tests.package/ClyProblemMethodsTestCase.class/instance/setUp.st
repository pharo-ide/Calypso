running
setUp
	| criticPlugin |
	criticPlugin := ClyCriticEnvironmentPlugin new.
	analyzedClass := ClyAnalyzedClassStub new.
	super setUp.
	
	environment addPlugin: criticPlugin.
	critic := criticPlugin systemCritic.