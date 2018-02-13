private
openOn: aQuery withTitle: dialogTitle thenDo: resultActionBlock

	self showItemsOf: aQuery.
	self title: dialogTitle.

	browser openModal: self.
	
	^[self cancelled ifTrue: [ CmdCommandAborted signal ].
	resultActionBlock value]	
		ensure: [ itemsView closeDataSource]