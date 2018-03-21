user requests
requestMultipleVariables: queryTitle from: classes

	^tool searchDialog 
		requestMultipleObjects: queryTitle 
		from: ClyAllInstanceVariables sorted
		inScope: (ClyClassScope ofAll: classes) withInheritedScope