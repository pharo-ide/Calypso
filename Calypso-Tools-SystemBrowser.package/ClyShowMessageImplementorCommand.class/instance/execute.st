execution
execute

	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser browseQueryResultOf: (ClyMessageImplementors of: selectors)