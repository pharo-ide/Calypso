execution
execute
	| method |
	
	method := browser searchDialog 
		requestSingleObject: 'Choose method' from: browser methodView query.
	
	browser selectMethod: method