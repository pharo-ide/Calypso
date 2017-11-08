navigation
showClassesForPackages: selectedPackages
	
	| classQueries fullQuery classes dataSource |
	classQueries := selectedPackages items collect: [ :each | 
		each type prepareClassQueryFrom: each actualObject].
	fullQuery := ClyCompositeQuery with: classQueries as: ClyHierarchicallySortedClasses new.

	classes := navigationEnvironment query: fullQuery.	
	dataSource := ClyCollapsedDataSource on: classes.	
	classView dataSource: dataSource 