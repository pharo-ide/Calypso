queries
actualItemsDo: aBlockWithArgAndIndex
	
	self representsBrowserItems ifFalse: [ 
		self items doWithIndex: aBlockWithArgAndIndex.
		^self ].
	
	self items doWithIndex: [:each :index | 
			aBlockWithArgAndIndex value: each actualObject value: index]