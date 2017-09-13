execution
execute
	
	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser browseMethodsFromQuery: (ClyMessageSenders of: selectors)