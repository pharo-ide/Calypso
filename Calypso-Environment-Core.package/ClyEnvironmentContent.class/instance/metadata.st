description
metadata
	^metadata ifNil: [ 
		metadata := ClyEnvironmentContentMetadata 
			forContentBuiltBy: buildingQuery from: environmentScope ]