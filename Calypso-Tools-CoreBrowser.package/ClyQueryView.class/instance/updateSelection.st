controlling
updateSelection

	| selectedItems |
	selectedItems := table selectedRowIndexes 
		collect: [:each | self dataSource elementAt: each].
		
	selection := ClyDataSourceSelection fromRoot: self dataSource items: selectedItems.

	changesWasInitiatedByUser 
		ifTrue: [desiredSelection := selection asDesiredSelection]
		ifFalse: [ desiredSelection ifNotNil: [
						desiredSelection checkItemsOfCurrentSelection: selection] ]