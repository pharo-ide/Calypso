execution
execute

	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser browseMethodsFromQuery: (ClyMessageImplementors of: selectors)