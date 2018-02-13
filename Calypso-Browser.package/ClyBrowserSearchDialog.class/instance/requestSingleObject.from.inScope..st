requests
requestSingleObject: dialogTitle from: aQuery inScope: aScope
	
	aScope bindTo: browser navigationEnvironment.

	^self requestSingleObject: dialogTitle from: (aScope adoptQuery: aQuery)