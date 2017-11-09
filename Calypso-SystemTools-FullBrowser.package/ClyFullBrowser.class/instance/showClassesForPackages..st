navigation
showClassesForPackages: selectedPackages
	
	| classQueries fullQuery classes dataSource |
	classQueries := OrderedCollection new.
	selectedPackages groupItemsByTypeAndDo: [ :typeClass :items | 
		classQueries addAll: (typeClass prepareClassQueriesFrom: items)].
	fullQuery := ClyCompositeQuery with: classQueries as: ClyHierarchicallySortedClasses new.

	classes := navigationEnvironment query: fullQuery.	
	dataSource := ClyCollapsedDataSource on: classes.	
	classView dataSource: dataSource 