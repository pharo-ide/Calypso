execution
collectMetadataOf: aQueryResult by: anEnvironmentPlugin
	subqueries do: [ :each | each collectMetadataOf: aQueryResult by: anEnvironmentPlugin ]