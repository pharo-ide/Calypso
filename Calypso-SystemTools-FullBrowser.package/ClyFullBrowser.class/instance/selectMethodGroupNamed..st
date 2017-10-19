navigation
selectMethodGroupNamed: tagName

	self changeNavigationStateBy: [ 
		self methodGroupSelection selectItemsWhere: [ :each | each name = tagName ]
	]