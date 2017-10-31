initialization
collectMetadata
	accessGuard critical: [ 
		metadata ifNotNil: [ ^self ].

		metadata := ClyQueryResultMetadata for: self.
		environment pluginsDo: [:each | 
			buildingQuery collectMetadataOf: self by: each	]
	]