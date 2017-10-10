queries
findItemsWith: actualObjects

	| result |
	result := self dataSource findItemsWith: actualObjects.
	result size = actualObjects size | self isFilterActive not ifTrue: [^result].
	
	self setUpDataSource: table initialDataSource.
	^self dataSource findItemsWith: actualObjects