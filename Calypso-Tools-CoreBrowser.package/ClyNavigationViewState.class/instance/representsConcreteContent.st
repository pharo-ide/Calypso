testing
representsConcreteContent
	"this method allows to detect that navigation view is in state when it not shows any concrete content. It is happens when view was not requested to show anything yet. In that case data source is initialized with unknown content instance"
	
	^(dataSource isBasedOn: ClyUnknownEnvironmentContent) not