initialization
prepareNewFor: aQuery in: aNavigationEnvironment
	^self copy 
		environment: aNavigationEnvironment;
		buildingQuery: aQuery;
		beProtected.