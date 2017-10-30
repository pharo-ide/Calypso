private
showItemsOf: aQuery inScope: anEnvironmentScope

	| result dataSource |
	result := browser navigationEnvironment query: aQuery inScope: anEnvironmentScope.
	
	dataSource := ClyCollapsedDataSource on: result.
	dataSource numberOfRows < 10
		ifTrue: [ itemsView height: 100 ]
		ifFalse: [ itemsView height: 300; enableFilter ].
	itemsView dataSource: dataSource.