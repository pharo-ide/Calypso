description
metadata
	^metadata ifNil: [ 
		metadata := ClyQueryMetadata 
			forContentBuiltBy: buildingQuery from: environmentScope ]