navigation
selectClass: aClass atMethodTag: tagName

	self changeNavigationStateBy: [ 
		self selectClass: aClass.
		self selectedMethodGroups selectItemsWhich: [ :each | each name = tagName ]]