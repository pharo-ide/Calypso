private
openOn: aQuery inScope: aScope withTitle: dialogTitle thenDo: resultActionBlock

	self showItemsOf: aQuery inScope: aScope.
	self title: dialogTitle.

	browser openModal: self.
	
	^[self cancelled ifTrue: [ CmdCommandAborted signal ].
	resultActionBlock value]	
		ensure: [ itemsView closeDataSource]