execution
execute

	| selectors queryBrowser query |
	selectors := methods collect: [ :each | each selector].
	
	query := 	ClyMessageImplementors of: selectors from: self createQueryScope.
	queryBrowser := browser spawnQueryBrowserOn: query.
	self selectMethodsIn: queryBrowser 