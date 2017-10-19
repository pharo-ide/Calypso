navigation
selectClass: aClass atMethodTag: tagName

	self changeNavigationStateBy: [ 
		self selectClass: aClass.
		self methodGroupSelection selectItemsWhere: [ :each | each name = tagName ]]