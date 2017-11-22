queries
query: aQuery inNewScope: anEnvironmentScope
	"execute new query from new scope
	which supposed to be based on basis of some of observedContent items"
	
	^queryResult query: aQuery inNewScope: anEnvironmentScope