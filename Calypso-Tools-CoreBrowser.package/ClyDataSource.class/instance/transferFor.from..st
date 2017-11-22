drag and drop
transferFor: dataSourceItems from: aMorph
	| selection passenger |
	selection := dataSourceItems first rootDataSource 
		newSelectionWith: dataSourceItems. "to get selection bound to last selected item. In FastTable last selected item is first in the list"

	passenger := queryView createDragPassengerFor: selection.
	
	^super transferFor: passenger from: aMorph