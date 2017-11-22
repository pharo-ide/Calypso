navigation
selectObject: anObject 
	| foundItems |
	self changeStateBy: [
		foundItems := resultView findItemsWith: { anObject }.
	
		foundItems ifNotEmpty: [ 
			self selection selectItems: foundItems ]
	]