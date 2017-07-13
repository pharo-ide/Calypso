execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser browseMethodsFromQuery: (ClyVariableWriters of: vars)