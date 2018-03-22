updating
publishCollectedChanges
	changes do: [ :queryResult | queryResult publishChanges ].
	changes removeAll