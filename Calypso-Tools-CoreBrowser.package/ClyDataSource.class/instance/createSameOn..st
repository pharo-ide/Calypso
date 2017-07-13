queries
createSameOn: newCursor
	| newDataSource |
	newDataSource := self class for: itemsView on: newCursor.
	newDataSource childrenStructure: childrenStructure.
	^newDataSource