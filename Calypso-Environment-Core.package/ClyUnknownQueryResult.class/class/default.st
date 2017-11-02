default
default
	^default ifNil: [ 
		default := self new
			environmentScope: ClyUnknownScope new;
			buildingQuery: ClyUnknownQuery new  ]