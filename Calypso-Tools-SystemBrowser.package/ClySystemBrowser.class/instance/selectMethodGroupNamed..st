navigation
selectMethodGroupNamed: tagName

	self changeNavigationStateBy: [ 
		self selectedMethodGroups selectItemsWhich: [ :each | each name = tagName ]
	]