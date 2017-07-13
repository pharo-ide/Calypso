drag and drop
transferFor: dataSourceItems from: aMorph
	| selection passenger |
	selection := ClyDataSourceSelection 
		fromRoot: dataSourceItems first rootDataSource items: dataSourceItems.

	passenger := itemsView createDragPassengerFor: selection.
	
	^super transferFor: passenger from: aMorph