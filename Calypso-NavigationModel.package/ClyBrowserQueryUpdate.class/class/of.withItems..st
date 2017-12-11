instance creation
of: aBrowserQueryResult withItems: aBrowserQueryCache
	^self new 
		metadata: aBrowserQueryResult metadata;
		itemCache: aBrowserQueryCache;
		totalItemCount: aBrowserQueryResult size