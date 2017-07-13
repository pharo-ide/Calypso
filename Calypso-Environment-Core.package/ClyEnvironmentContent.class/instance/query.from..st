queries
query: aQueryOrContentClass from: basisObjects
	"execute new query from new scope of my items and given basis objects
	(which supposed to be some of my items)"
	| scope |
	scope := environment selectScope: self itemScope of: basisObjects.
	^scope query: aQueryOrContentClass