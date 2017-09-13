*Calypso-Tools-MethodBrowser
browseMethodsFromQuery: aMethodQuery
	
	| queryScopes localClassScope |
	localClassScope := self selectedClasses asItemsScope.
	queryScopes := { self systemScope. self selectedPackages asItemsScope.. 
		localClassScope asScope: ClySubclassScope. localClassScope } reject: #isBasedOnEmptyBasis.
	
	self browseMethodsFromQuery: aMethodQuery inScopes: queryScopes