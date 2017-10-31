initialization
collectMetadata
	accessGuard critical: [ 
		metadata ifNotNil: [ ^self ].

		metadata := ClyQueryResultMetadata forContentBuiltBy: buildingQuery from: environmentScope.
		environment pluginsDo: [:each | 
			buildingQuery collectMetadataOf: self by: each	]
	]