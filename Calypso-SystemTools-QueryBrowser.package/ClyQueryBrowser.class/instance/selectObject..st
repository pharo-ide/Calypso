navigation
selectObject: anObject 
	| foundItems |
	self changeNavigationStateBy: [
		foundItems := resultView dataSource findItemsWith: { anObject }.
	
		foundItems ifNotEmpty: [ 
			self selection selectItems: foundItems ]
	]