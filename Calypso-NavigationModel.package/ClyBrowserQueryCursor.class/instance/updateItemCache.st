private
updateItemCache
	| update |
	update := cache createFullUpdateOf: queryResult.
	cache := update itemCache.
	itemCount := update totalItemCount.
	metadata := update metadata