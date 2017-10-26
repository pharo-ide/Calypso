running
setUp
	| scope |
	super setUp.
	
	"ClyGroupedClass should build variable related method groups using basis of scope
	Basis is required to get methods from built groups which are visible only from these classes
	and not just from classes which declares given variables "
	scope := ClyClassScope of: { Object. Array. String }.
	queryResult environmentScope: scope.