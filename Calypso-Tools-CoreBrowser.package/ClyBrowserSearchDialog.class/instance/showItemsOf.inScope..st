private
showItemsOf: aQuery inScope: aScope

	| dataSource |
	aQuery bindTo: aScope in: browser navigationEnvironment.
	dataSource := ClyCollapsedDataSource on: aQuery.
	dataSource numberOfRows < 10
		ifTrue: [ itemsView height: 100 ]
		ifFalse: [ itemsView height: 300; enableFilter ].
	itemsView dataSource: dataSource.