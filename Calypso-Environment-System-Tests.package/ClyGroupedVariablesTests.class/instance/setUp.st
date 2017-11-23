running
setUp
	| scope |
	super setUp.
	
	"ClyGroupedvariables should build variable method groups using basis of scope
	Basis is required to get methods from built groups which are visible only from these classes
	and not just from classes which declares given variables"
	scope := ClyClassScope of: { Object. Array. String } in: environment.
	queryResult buildingQuery: (ClyAllClasses from: scope).