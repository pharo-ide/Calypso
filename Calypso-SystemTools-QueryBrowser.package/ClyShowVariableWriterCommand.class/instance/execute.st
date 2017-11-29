execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser spawnQueryBrowserOn: (ClyVariableWriters of: vars)