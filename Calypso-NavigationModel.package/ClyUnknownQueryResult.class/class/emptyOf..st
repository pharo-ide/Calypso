default
emptyOf: aQuery 
	"I am used for optimization when query should be executed in empty scope.
	In that case any query result will be empty and should not be bound to any queried object.
	So I am used in that case as direct result without any relation to real environment.
	It helps to avoid communication with environment for such cases in remote scenario"
	| env |
	env := ClyNavigationEnvironment new.
	^self new
		environment: env;
		buildingQuery: aQuery