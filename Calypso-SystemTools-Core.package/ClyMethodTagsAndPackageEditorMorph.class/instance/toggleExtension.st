operations
toggleExtension

	self requestChangeBy: [ 
		self isExtensionActive 
			ifTrue: [ self requestTag ]
			ifFalse: [ self requestPackage]
	]