events handling
defaultFocusMorph

	^itemsView filterField ifNil: [ itemsView dataSource table ]