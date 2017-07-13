navigation
selectMethod: aMethod 
	| foundItems |
	self changeNavigationStateBy: [
		foundItems := methodView dataSource findItemsWith: { aMethod }.
	
		foundItems ifNotEmpty: [ 
			self selectedMethods selectItems: foundItems ]
	]