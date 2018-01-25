operations
openEditor

	self requestChangeBy: [
		self isExtensionActive 
			ifTrue: [ self requestPackage]
			ifFalse: [ self requestTag ]
	]