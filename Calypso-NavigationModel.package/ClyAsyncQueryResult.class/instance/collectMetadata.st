building
collectMetadata
	"In async query we always collect metadata in background 
	and full execution process completes only after this.
	So no protection is needed here and no lazy logic over metadata variable"
	metadata := ClyQueryResultMetadata new.
	environment pluginsDo: [:each | 
		buildingQuery collectMetadataOf: self by: each	]
