items resolving
resolveMetadataOfCritiques: aQueryResult
	super resolveMetadataOfCritiques: aQueryResult.
	
	aQueryResult buildingQuery isComputationComplete ifFalse: [ 
		aQueryResult addMetaProperty: ClyBackgroundProcessingTag instance]