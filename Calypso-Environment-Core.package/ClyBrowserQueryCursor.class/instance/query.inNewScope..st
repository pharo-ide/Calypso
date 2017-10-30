queries
query: anEnvironmentQueryOrContent inNewScope: anEnvironmentScope
	"execute new query from new scope
	which supposed to be based on basis of some of observedContent items"
	
	^queryResult query: anEnvironmentQueryOrContent inNewScope: anEnvironmentScope