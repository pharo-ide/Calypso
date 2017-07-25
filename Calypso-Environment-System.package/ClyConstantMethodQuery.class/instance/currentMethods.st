execution
currentMethods

	^methods
		collect: [ :each | each origin localMethodNamed: each selector ifAbsent: [nil] ]
		thenReject: [ :each | each isNil or: [each package isNil or: [ each isInstalled not]]]