helpers
assertItems: itemValueWithDepthArray
	super assertItems: itemValueWithDepthArray.
	
	"ClyGroupedClass should build variable related method groups using basis of scope
	Basis is required to get methods from built groups which are visible only from these classes
	and not just from classes which declares given variables "

	queryResult items do: [ :each |
		self assert: each actualObject classes equals: queryResult environmentScope basisObjects ]