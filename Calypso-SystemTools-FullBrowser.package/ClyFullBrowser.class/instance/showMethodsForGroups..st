navigation
showMethodsForGroups: selectedMethodGroups
		
	| methodQueries fullQuery dataSource |
	selectedMethodGroups isEmpty ifTrue: [ ^self showAllMethods].

	methodQueries := selectedMethodGroups actualObjects 
		collect: [ :eachGroup | eachGroup methodQuery].
	fullQuery := ClyCompositeQuery 
		with: methodQueries as: (ClySortedQueryResult using: ClySortMethodFunction ascend).
	dataSource := ClyCollapsedDataSource on: fullQuery.
	methodView dataSource: dataSource