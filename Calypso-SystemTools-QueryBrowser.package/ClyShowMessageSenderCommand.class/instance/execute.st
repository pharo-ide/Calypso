execution
execute
	
	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser browseQuery: (ClyMessageSenders of: selectors)