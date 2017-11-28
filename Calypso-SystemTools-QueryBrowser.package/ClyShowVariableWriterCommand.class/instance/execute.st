execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser browseQuery: (ClyVariableWriters of: vars)