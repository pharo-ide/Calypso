requests
requestMultipleObjects: dialogTitle from: aQuery inScope: aScope

	aScope bindTo: browser navigationEnvironment.
	
	^self requestMultipleObjects: dialogTitle from: (aScope adoptQuery: aQuery)