queries
findAllItemsBy: aBlockWithDataSource
	| result fullResult |
	result := aBlockWithDataSource value: self dataSource.
	self isFilterActive ifFalse: [^result].	
	"In case if view is in filter mode we should try to find items in full origina data source.
	If it will be different result then we should reset filter. 
	Idea that if view is able to find items then they should be accessible/visible in table.
	And view must find items in original data source in case if filter do not include them"
	fullResult := aBlockWithDataSource value: table initialDataSource.
	result size = fullResult size ifTrue: [ ^result ].
	self setUpDataSource: table initialDataSource.
	^fullResult