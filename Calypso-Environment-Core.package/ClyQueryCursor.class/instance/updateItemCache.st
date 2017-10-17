private
updateItemCache
	| update |
	update := cache createFullUpdateOf: observedContent.
	cache := update itemCache.
	metadata := update metadata