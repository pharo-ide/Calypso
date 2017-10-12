queries
query: aQueryOrContentClass from: basisObjects
	"execute new query from new scope of my items and given basis objects
	(which supposed to be some of my items)"
	| scope |
	scope := environment selectScope: ClyEnvironmentScope of: basisObjects.
	^scope query: aQueryOrContentClass