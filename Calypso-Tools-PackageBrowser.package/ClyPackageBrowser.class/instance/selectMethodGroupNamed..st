navigation
selectMethodGroupNamed: tagName

	self changeNavigationStateBy: [ 
		self methodGroupSelection selectItemsWhich: [ :each | each name = tagName ]
	]