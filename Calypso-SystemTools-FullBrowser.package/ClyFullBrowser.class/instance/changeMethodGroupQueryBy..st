navigation
changeMethodGroupQueryBy: aBlock
	
	self changeStateBy: [
		methodGroupQuery := aBlock value.
		methodGroupView showQuery: methodGroupQuery.
		methodGroupView initiateUIChangeBy: [
			"view should know that any change here was not requested by user"
			self methodGroupSelectionChanged] 
	]