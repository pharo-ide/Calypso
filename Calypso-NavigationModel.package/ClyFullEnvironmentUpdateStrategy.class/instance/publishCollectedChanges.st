updating
publishCollectedChanges
	changes do: [ :queryResult | queryResult notifyChanges ].
	changes removeAll