navigation
showClassesForPackages: selectedPackages
	
	| classQueries fullQuery dataSource |
	classQueries := OrderedCollection new.
	selectedPackages groupItemsByTypeAndDo: [ :typeClass :items | 
		classQueries addAll: (typeClass prepareClassQueriesFrom: items)].
	fullQuery := ClyCompositeQuery with: classQueries as: ClyExtensionLastSortedClasses hierarchical.

	dataSource := ClyCollapsedDataSource on: fullQuery.	
	classView dataSource: dataSource 