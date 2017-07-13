description
metadata
	^metadata ifNil: [ 
		metadata := ClyEnvironmentContentMetadata 
			forContentOf: self itemScope builtBy: buildingQuery from: environmentScope ]