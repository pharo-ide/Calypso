navigation
selectMethod: aMethod

	| foundItems |
	self changeStateBy: [
		foundItems := methodView findItemsWith: { aMethod }.
		foundItems ifNotEmpty: [ ^self methodSelection selectItems: foundItems ].
	
		self selectClass: aMethod origin.
		self classSelection isEmpty ifTrue: [ ^self ].
		self methodGroupSelection beEmpty.
		self methodSelection selectItemsWith: {aMethod}
	]