private
openOn: anEnvironmentQuery inScope: anEnvironmentScope withTitle: dialogTitle thenDo: resultActionBlock

	self showItemsOf: anEnvironmentQuery inScope: anEnvironmentScope.
	self title: dialogTitle.

	browser openModal: self.
	
	^[self cancelled ifTrue: [ CmdCommandAborted signal ].
	resultActionBlock value]	
		ensure: [ itemsView closeDataSource]