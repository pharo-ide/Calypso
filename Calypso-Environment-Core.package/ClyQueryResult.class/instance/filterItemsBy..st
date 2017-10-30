queries
filterItemsBy: aClyItemFilter

	^self rebuildForQuery: (ClyFilteringQuery for: buildingQuery by: aClyItemFilter)