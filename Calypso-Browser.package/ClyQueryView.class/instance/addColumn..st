accessing
addColumn: columnId

	| newColumn |
	newColumn := ClyTableColumn id: columnId.
	table addColumn: newColumn.
	^newColumn