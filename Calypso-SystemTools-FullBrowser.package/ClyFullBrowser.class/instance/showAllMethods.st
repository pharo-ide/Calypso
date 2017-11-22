navigation
showAllMethods
		
	| classScope methodQuery |
	classScope := methodGroupQuery scope asScope: metaLevelScope.	
		
	methodQuery := ClyAllMethods sortedFrom: classScope.	
	methodView showQuery: methodQuery