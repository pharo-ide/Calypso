user requests
requestSingleClass: queryTitle

	^self browser searchDialog 
		requestSingleObject: queryTitle from: ClyAllClasses sorted