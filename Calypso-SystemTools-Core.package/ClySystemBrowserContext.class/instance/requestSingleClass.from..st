user requests
requestSingleClass: queryTitle from: classCollection
	^tool searchDialog 
		requestSingleObject: queryTitle
		from: ClyAllClasses hierarchical 
		inScope: (ClyClassScope ofAll: classCollection)