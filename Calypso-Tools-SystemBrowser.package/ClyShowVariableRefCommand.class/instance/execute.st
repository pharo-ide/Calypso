execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser browseQueryResultOf: (ClyVariableReferences of: vars)