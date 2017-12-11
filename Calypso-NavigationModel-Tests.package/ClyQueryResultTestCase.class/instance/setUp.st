running
setUp
	super setUp.
	
	query := self createQuery.
	
	queryResult := self createQueryResult prepareNewFor: query in: environment.
	queryResult cancelRebuild. 
	"by default result is in state to be rebuilt by query.
	We do not need it in tests where we usually just test fillWith: logic"
	