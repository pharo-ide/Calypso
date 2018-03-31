running
buildResultWith: actualItems
	
	query := ClyConstantQuery returning: actualItems as: self createQueryResult.
	query scope: (ClyScopeExample emptyIn: environment). 
	queryResult := query execute