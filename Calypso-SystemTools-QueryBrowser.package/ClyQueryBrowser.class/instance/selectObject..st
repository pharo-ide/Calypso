navigation
selectObject: anObject 
	| foundItems |
	self changeStateBy: [
		foundItems := resultView itemsWith: { anObject }.
	
		foundItems ifNotEmpty: [ 
			self selection selectItems: foundItems ]
	]