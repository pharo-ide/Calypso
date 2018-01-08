testing
representsConcreteQuery
	"this method allows to detect that query view is in state when it not shows any concrete query. It is happens when view was not requested to show anything yet. In that case data source is initialized with unknown query instance"
	
	^(dataSource isBasedOn: ClyUnknownQuery instance) not