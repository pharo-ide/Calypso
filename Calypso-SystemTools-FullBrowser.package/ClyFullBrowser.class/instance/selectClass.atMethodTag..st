navigation
selectClass: aClass atMethodTag: tagName

	self changeStateBy: [ 
		self selectClass: aClass.
		self methodGroupSelection selectItemsWhere: [ :each | each name = tagName ]]