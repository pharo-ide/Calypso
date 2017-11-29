accessing
rootParentItem
	^ ownerDataSource isRoot 
		ifTrue: [ self ]
		ifFalse: [ self parentItem rootParentItem ]