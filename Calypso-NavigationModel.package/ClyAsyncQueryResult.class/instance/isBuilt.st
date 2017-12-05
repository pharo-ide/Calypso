testing
isBuilt
	^super isBuilt 
		and: [(self hasMetaProperty: ClyBackgroundProcessingTag) not]