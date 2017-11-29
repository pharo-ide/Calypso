accessing
rootDataSource
	^ ownerDataSource isRoot 
		ifTrue: [ ownerDataSource ]
		ifFalse: [ ownerDataSource parentItem rootDataSource ]