navigation
changeMethodGroupQueryBy: aBlock
	
	self changeStateBy: [
		methodGroupQuery := aBlock value.
		methodGroupView showQuery: methodGroupQuery.
		self methodGroupSelectionChanged
	]