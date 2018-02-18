user requests
requestSinglePackage: queryTitle
	^self browser searchDialog 
		requestSingleObject: queryTitle from: ClyAllPackages sorted