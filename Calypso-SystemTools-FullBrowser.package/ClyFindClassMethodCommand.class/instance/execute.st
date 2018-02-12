execution
execute
	| scope method |
	scope := ClyClassScope ofAll: classes in: browser navigationEnvironment.
	
	method := browser searchDialog 
		requestSingleObject: 'Choose method' 
		from: ClyAllMethods sorted
		inScope: scope.
	
	browser selectMethod: method