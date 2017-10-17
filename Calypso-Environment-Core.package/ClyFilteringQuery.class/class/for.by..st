instance creation
for: originalQuery by: aClyItemFilter
	^(self requiredResult: originalQuery requiredResult)
		originalQuery: originalQuery;
		itemFilter: aClyItemFilter 