accessing
doInOrder: blockWithClass
	
	self rootsDo: [ :root | 
		blockWithClass value: root.
		self allChildrenOf: root do: blockWithClass ]