navigation
showAllMethods
		
	| classScope methodQuery |
	classScope := methodGroupQuery scope asScope: metaLevelScope.
	methodQuery := ClyAllMethods sortedFrom: classScope.
	
	methodView dataSource: methodQuery