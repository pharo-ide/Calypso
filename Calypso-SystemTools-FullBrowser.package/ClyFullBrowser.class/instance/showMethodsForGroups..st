navigation
showMethodsForGroups: selectedMethodGroups
		
	| methods dataSource methodQuery scope |
	methodQuery := ClyAllMethods sorted.
	selectedMethodGroups isEmpty 
		ifTrue: [ dataSource := selectedMethodGroups rootDataSource withNewContent: methodQuery]
		ifFalse: [ 
			scope := selectedMethodGroups asItemsScope: ClyMethodGroupScope.
			methods := navigationEnvironment query: methodQuery inScope: scope.	
			dataSource := ClyCollapsedDataSource for: self on: methods].
	dataSource childrenStructure: #().
	methodView dataSource: dataSource