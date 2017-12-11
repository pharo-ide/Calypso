accessing
doInOrderWithDepth: blockWithClassAndDepth
	
	self rootsDo: [ :root | 
		blockWithClassAndDepth value: root value: 0.
		self allChildrenOf: root depth: 0 do: blockWithClassAndDepth ]