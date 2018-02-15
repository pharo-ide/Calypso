execution
execute

	| selectors query |
	selectors := methods collect: [ :each | each selector].
	
	query := 	ClyMessageImplementors ofAny: selectors from: self createQueryScope.
	browser spawnQueryBrowserOn: query withState: [:queryBrowser |
		self selectMethodsIn: queryBrowser ]