navigation
selectClass: aClass atMethodTag: tagName

	self changeNavigationStateBy: [ 
		self selectClass: aClass.
		self methodGroupSelection selectItemsWhich: [ :each | each name = tagName ]]