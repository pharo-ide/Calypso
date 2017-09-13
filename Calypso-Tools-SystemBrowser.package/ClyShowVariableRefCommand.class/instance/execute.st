execution
execute
	| vars |
	vars := variables collect: [:each | each variable].
	
	browser browseMethodsFromQuery: (ClyVariableReferences of: vars)