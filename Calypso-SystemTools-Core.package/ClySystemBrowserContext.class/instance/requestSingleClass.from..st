user requests
requestSingleClass: queryTitle from: classCollection
	^self browser searchDialog 
		requestSingleObject: queryTitle
		from: ClyAllClasses hierarchical 
		inScope: (ClyClassScope of: classCollection)