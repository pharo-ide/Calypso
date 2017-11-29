default
default
	^default ifNil: [ 
		default := self new
			buildingQuery: ClyUnknownQuery new  ]