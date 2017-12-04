testing
isReady
	^self isBuilt 
		and: [(self hasMetaProperty: ClyBackgroundProcessingTag) not]