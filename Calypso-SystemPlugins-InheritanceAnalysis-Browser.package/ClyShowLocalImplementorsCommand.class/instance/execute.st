execution
execute

	| selectors classes classScope queryBrowser |
	selectors := methods collect: [ :each | each selector].
	classes := methods collect: [ :each | each origin].
	classScope := ClyClassScope ofAll: classes in: browser navigationEnvironment.
	
	queryBrowser := browser spawnQueryBrowserOn: (ClyMessageImplementors of: selectors from: classScope asFullHierarchyScope).
	queryBrowser selectObject: methods last