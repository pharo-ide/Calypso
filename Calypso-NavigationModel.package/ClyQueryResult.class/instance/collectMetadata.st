initialization
collectMetadata
	self protectAccessWhile: [ 
		metadata ifNotNil: [ ^self ].

		metadata := ClyQueryResultMetadata new.
		environment pluginsDo: [:each | 
			buildingQuery collectMetadataOf: self by: each	]
	]