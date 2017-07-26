system changes
environmentChanged: anEnvironmentChanged

	self isClosed ifTrue: [ ^self ].
	
	self updateItems.
	[self isClosed ifFalse: [ 
		"This check is required for the case when it will be triggered from nont UI process.
		It will defer update and in time when it will be executed data source can became closed"
		itemsView itemsOf: self wereUpdatedBy: anEnvironmentChanged.
		self tableRefresh]] updateCalypsoUI