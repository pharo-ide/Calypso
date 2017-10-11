navigation
selectObject: anObject 
	| foundItems |
	self changeNavigationStateBy: [
		foundItems := resultView findItemsWith: { anObject }.
	
		foundItems ifNotEmpty: [ 
			self selection selectItems: foundItems ]
	]