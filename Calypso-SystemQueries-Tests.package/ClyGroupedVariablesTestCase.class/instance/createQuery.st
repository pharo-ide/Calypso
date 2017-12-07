running
createQuery
	"ClyGroupedVariables should build variable method groups using query scope.
	Scope is required to get methods from built groups which are visible only from these classes
	and not just from classes which define given variables"

	| scope |
	scope := ClyInstanceSideScope
		ofAll:
			{Object.
			Array.
			String}
		in: environment.
	^ ClyAllClasses from: scope