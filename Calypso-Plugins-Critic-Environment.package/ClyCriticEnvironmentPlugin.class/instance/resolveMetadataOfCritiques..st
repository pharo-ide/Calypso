items resolving
resolveMetadataOfCritiques: aClySortedCritiques
	super resolveMetadataOfCritiques: aClySortedCritiques.
	
	aClySortedCritiques isComputationComplete ifFalse: [ 
		aClySortedCritiques addMetaProperty: ClyBackgroundProcessingTag instance]