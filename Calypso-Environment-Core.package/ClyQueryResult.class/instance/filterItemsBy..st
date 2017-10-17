queries
filterItemsBy: aClyItemFilter

	^self query: (ClyFilteringQuery for: buildingQuery by: aClyItemFilter)