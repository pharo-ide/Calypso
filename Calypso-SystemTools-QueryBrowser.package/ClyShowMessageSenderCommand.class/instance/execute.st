execution
execute
	
	| selectors |
	selectors := messages collect: [ :each | each selector].
	
	browser spawnQueryBrowserOn: (ClyMessageSenders ofAny: selectors)