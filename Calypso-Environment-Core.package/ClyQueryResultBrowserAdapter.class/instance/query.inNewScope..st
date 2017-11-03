queries
query: aQuery inNewScope: anEnvironmentScope
	"executes new query from new scope
	(which supposed to be based on basis of some of my items)"
	| scope |
	self flag: #todo. "should be removed"
	^actualResult query: aQuery inNewScope: anEnvironmentScope