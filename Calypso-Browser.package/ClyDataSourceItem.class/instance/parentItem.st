accessing
parentItem
	^ ownerDataSource isRoot 
		ifTrue: [ nil ]
		ifFalse: [ ownerDataSource parentItem]