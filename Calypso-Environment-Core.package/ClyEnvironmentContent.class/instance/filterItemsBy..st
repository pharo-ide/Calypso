queries
filterItemsBy: aClyItemFilter

	^self query: (ClyEnvironmentFilterQuery for: buildingQuery by: aClyItemFilter)