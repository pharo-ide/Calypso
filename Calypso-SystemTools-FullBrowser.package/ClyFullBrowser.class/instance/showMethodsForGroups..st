navigation
showMethodsForGroups: selectedMethodGroups
		
	| methodQueries |
	selectedMethodGroups isEmpty ifTrue: [ ^self showAllMethods].

	methodQueries := selectedMethodGroups actualObjects 
		collect: [ :eachGroup | eachGroup methodQuery].
	methodView 
		showQueries: methodQueries 
		as: (ClySortedQueryResult using: ClySortMethodFunction ascend)