initialization
collectMetadata
	accessGuard critical: [ 
		metadata ifNotNil: [ ^self ].

		metadata := ClyQueryResultMetadata new.
		environment pluginsDo: [:each | 
			buildingQuery collectMetadataOf: self by: each	]
	]