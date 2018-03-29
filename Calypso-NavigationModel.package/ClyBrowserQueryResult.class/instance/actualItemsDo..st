queries
actualItemsDo: aBlockWithArgAndIndex

	self items doWithIndex: [:each :index | 
		aBlockWithArgAndIndex value: each actualObject value: index]