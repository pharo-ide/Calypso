execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser spawnQueryBrowserOn: (ClyVariableReferences of: vars)