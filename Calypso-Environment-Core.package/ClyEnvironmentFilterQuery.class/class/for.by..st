instance creation
for: originalQuery by: aClyItemFilter
	^(self requestedContent: originalQuery requestedContent)
		originalQuery: originalQuery;
		itemFilter: aClyItemFilter 