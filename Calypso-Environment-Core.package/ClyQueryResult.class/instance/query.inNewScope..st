queries
query: aQuery inNewScope: aScope
	"executes new query from new scope
	(which supposed to be based on basis of some of my items)"
	| scope |
	self flag: #todo. "should be removed"
	^environment query: aQuery inScope: aScope