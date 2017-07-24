testing
isAboutSameContentAs: anotherMetadata
	^(queryScope == anotherMetadata queryScope)
		and: [ buildingQuery = anotherMetadata buildingQuery ]