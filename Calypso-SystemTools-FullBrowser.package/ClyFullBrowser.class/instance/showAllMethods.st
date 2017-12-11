navigation
showAllMethods
		
	| methodQuery |
	
	methodQuery := ClyAllMethods sortedFrom: self classScopeForMethods.	
	methodView showQuery: methodQuery