user requests
requestSingleClass: queryTitle from: classCollection
	^tool searchDialog 
		requestSingleObject: queryTitle
		from: ClyHierarchicallySortedClasses 
		inScope: (ClyLocalClassScope of: classCollection)