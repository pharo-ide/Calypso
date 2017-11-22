navigation
showAllMethods
		
	| dataSource classScope methodQuery |
	classScope := methodGroupQuery scope asScope: metaLevelScope.
	methodQuery := ClyAllMethods sortedFrom: classScope.
	dataSource := ClyCollapsedDataSource on: methodQuery.	
	methodView dataSource: dataSource