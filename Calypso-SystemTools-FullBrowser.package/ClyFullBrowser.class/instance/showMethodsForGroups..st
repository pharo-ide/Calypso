navigation
showMethodsForGroups: selectedMethodGroups
		
	| methodQueries fullQuery methods dataSource |
	selectedMethodGroups isEmpty ifTrue: [ ^self showAllMethods].

	methodQueries := selectedMethodGroups actualObjects 
		collect: [ :eachGroup | eachGroup methodQuery].
	fullQuery := ClyCompositeQuery 
		with: methodQueries as: (ClySortedQueryResult using: ClySortMethodFunction ascend).
	methods := navigationEnvironment query: fullQuery.
	dataSource := ClyCollapsedDataSource for: self on: methods.
	methodView dataSource: dataSource