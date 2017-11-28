execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser browseQuery: (ClyVariableReferences of: vars)