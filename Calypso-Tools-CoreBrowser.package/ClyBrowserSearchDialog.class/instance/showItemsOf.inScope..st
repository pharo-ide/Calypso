private
showItemsOf: anEnvironmentQuery inScope: anEnvironmentScope

	| cursor dataSource |
	cursor := browser navigationEnvironment query: anEnvironmentQuery inScope: anEnvironmentScope.
	
	cursor itemCount < 10
		ifTrue: [ itemsView height: 100 ]
		ifFalse: [ itemsView height: 300; enableFilter ].

	dataSource := ClyCollapsedDataSource on: cursor.
	itemsView dataSource: dataSource.