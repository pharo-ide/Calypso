private
updateItemCache
	| update |
	update := cache createFullUpdateOf: queryResult.
	cache := update itemCache.
	metadata := update metadata