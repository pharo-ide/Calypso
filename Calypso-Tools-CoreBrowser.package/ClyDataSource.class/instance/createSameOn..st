queries
createSameOn: aQuery
	| newDataSource |
	newDataSource := self class on: aQuery.
	newDataSource childrenStructure: childrenStructure.
	^newDataSource