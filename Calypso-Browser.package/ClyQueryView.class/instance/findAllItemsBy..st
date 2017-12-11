queries
findAllItemsBy: aBlockWithDataSource
	self 
		findAllItemsBy: aBlockWithDataSource 
		stopLookupWhen: [:result | false "by default we always look into both data source if exists"]