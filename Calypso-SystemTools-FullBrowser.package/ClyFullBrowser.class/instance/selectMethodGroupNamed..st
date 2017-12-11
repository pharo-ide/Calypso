navigation
selectMethodGroupNamed: tagName

	self changeStateBy: [ 
		self methodGroupSelection selectItemsWhere: [ :each | each name = tagName ]
	]