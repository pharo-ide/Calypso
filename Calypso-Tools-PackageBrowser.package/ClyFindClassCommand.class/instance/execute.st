execution
execute

	| class |
	class := browser searchDialog 
		requestSingleObject: 'Choose class' from: ClySortedClasses.
	
	browser selectClass: class