controlling
updateSelection

	| selectedItems |
	selectedItems := table selectedRowIndexes collect: [:each | self itemAt: each].
	selection := self newSelectionWith: selectedItems.

	changesWasInitiatedByUser 
		ifTrue: [desiredSelection := selection asDesiredSelection]
		ifFalse: [ desiredSelection ifNotNil: [
						desiredSelection checkItemsOfCurrentSelection: selection] ]