execution
execute

	| class |
	class := browser searchDialog 
		requestSingleObject: 'Choose class' from: ClyAllClasses sorted.
	
	browser selectClass: class