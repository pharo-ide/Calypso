queries
createSameOn: newQueryResult
	| newDataSource |
	newDataSource := self class for: itemsView on: newQueryResult.
	newDataSource childrenStructure: childrenStructure.
	^newDataSource