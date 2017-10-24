queries
query: anEnvironmentQueryOrContent inNewScope: anEnvironmentScope
	"executes new query from new scope
	(which supposed to be based on basis of some of my items)"
	| scope |
	self flag: #todo. "should be removed"
	scope := anEnvironmentScope asNewScopeIn: environment.
	^scope query: anEnvironmentQueryOrContent