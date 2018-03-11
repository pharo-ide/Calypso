running
buildResultWith: objects
	
	query := ClyConstantQuery returning: objects as: self createQueryResult.
	query scope: (ClyScopeExample emptyIn: environment). 
	queryResult := query execute