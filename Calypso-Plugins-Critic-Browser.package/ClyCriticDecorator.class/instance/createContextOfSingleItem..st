context
createContextOfSingleItem: aDataSourceItem
	^ClyCriticContext 
		fromCritiques: {aDataSourceItem} 
		of: analysisScope basisObjects anyOne 
		for: self